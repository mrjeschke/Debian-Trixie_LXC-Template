BASEDIR:=$(shell dab basedir)

all: info/init_ok
	dab bootstrap
	# configure timezone
	echo "Europe/Berlin" > ${BASEDIR}/etc/timezone
	dab exec cp --remove-destination -- /usr/share/zoneinfo/Europe/Berlin /etc/localtime
	dab exec dpkg-reconfigure -f noninteractive tzdata
	# enable ping for user id 1000-2000
	echo -net.ipv4.ping_group_range = 1000 2000 > ${BASEDIR}/etc/sysctl.d/ping.conf
	# base software
	dab exec dpkg --purge postfix
	dab install sudo curl needrestart
		# change boot-target
		dab exec systemctl set-default multi-user.target
		# NOTE: zstd appliances are only supported on PVE >= 7.0, take care on upload!
		dab finalize --compressor zstd-max

info/init_ok: dab.conf
		dab init
		touch $@

.PHONY: clean
clean:
        dab clean
        rm -f *~

.PHONY: dist-clean
dist-clean:
        dab dist-clean
        rm -f *~
