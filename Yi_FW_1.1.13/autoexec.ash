#1.2.13 firmware
#yi tweak
t ia2 -adj ev 10 0 70 0 0 150 0
#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163
t ia2 -adj autoknee 200
#set gamma level
t ia2 -adj gamma 160
#disable noise reduction
t ia2 -adj tidx -1 0 -1
#VIDEO MODE 0x00
#2560x1440 30P 16:9
#default resolution
writel 0xC05C2C8C 0x05A00A00
writew 0xC05C1E52 0x4190
#enable raw+jpeg stills
t app test debug_dump 14
sleep 9
#set sharpness for video mode
t is2 -shp mode 0
#t is2 -shp fir 100 0 0 0 0 0 0
t is2 -shp max_change 5 5
t is2 -shp cor d:\coring.txt
sleep 1
#fix ae/awb/adj locks
t ia2 -3a 1 1 0 1
#ready beep
t pwm 1 enable
sleep 1
t pwm 1 disable
