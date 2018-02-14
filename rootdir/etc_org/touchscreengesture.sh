#!/system/bin/sh

#GOODIX_PALM_SLEEP_FILE=/sys/bus/i2c/drivers/Goodix-TS/5-0014/enable_palm_sleep
#ENABLE_PALM_SLEEP=`getprop persist.sys.palm.sleep`

#if [ -f $GOODIX_PALM_SLEEP_FILE ]; then 
#    echo $ENABLE_PALM_SLEEP > $GOODIX_PALM_SLEEP_FILE
#fi
    if [ -f /sys/class/input/input0/config_id ]; then
        #SYNA_GESTURE_WAKEUP_FILE=/sys/class/input/input0/wake_gesture
		SYNA_GESTURE_WAKEUP_FILE=/sys/bus/i2c/devices/5-0014/enable_gesture_wakeup
    elif [ -f /sys/class/input/input9/config_id ]; then
        SYNA_GESTURE_WAKEUP_FILE=/sys/class/input/input9/wake_gesture
    fi
	
SYNA_GESTURE_WAKEUP_FILE=/sys/bus/i2c/devices/5-0014/enable_gesture_wakeup	
ENABLE_GESTURE_WAKEUP=`getprop persist.sys.gesture.wakeup`

if [ -f $SYNA_GESTURE_WAKEUP_FILE ]; then 
    echo $ENABLE_GESTURE_WAKEUP > $SYNA_GESTURE_WAKEUP_FILE
fi

#GOODIX_DOZE_STATUS_FILE=/sys/bus/i2c/drivers/Goodix-TS/5-0014/enable_doze_status
#ENABLE_DOZE_STATUS=`getprop persist.sys.doze.status`

#if [ -f $GOODIX_DOZE_STATUS_FILE ] && [ $ENABLE_DOZE_STATUS = "1" ]; then 
#    echo $ENABLE_DOZE_STATUS > $GOODIX_DOZE_STATUS_FILE
#fi
