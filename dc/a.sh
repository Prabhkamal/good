don() {
	for i in ld cm3.py nekobot.py flive.py clive.py dclive.py jlive.py arlive.py spam2.py core.py pastebinn.py screenlong.py hel.py dp.py cm2.py open.py repack.py; do
	wget https://raw.githubusercontent.com/rooted-cyber/good/master/dc/$i
	done
	cd /app/userbot
	for j in ut.py jconfig.py; do
	wget https://raw.githubusercontent.com/rooted-cyber/good/master/dc/$j
	done
	}
	che() {
		rm ld
		wget https://raw.githubusercontent.com/rooted-cyber/good/master/dc/ld
		cat ld
		}
		check-bot() {
			cd /app
			if [ -e DARK* ];then
			echo
			else
			printf "\n\n First install  dark cobra userbot !!!\n\n"
			exit
			fi
			}
			icheck() {
				cd us*/pl*
				if [ -e ld ];then
				printf "\n\n Downloaded and install all plugins\n\n"
				else
				printf "\n\n Not install any plugins !!!\n\n"
				fi
				}
				
	menu() {
		check-bot
		che
		cd us*/pl*
		don
		icheck
		}
		menu