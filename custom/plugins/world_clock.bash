function now() {
    PT=`env TZ=US/Pacific date -R`
    SH=`env TZ=Asia/Shanghai date -R`
    BP=`env TZ=Europe/Budapest date -R`
    LD=`env TZ=Europe/London date -R`
    TK=`env TZ=Asia/Tokyo date -R`

    echo "Shenzhen       $SH"
    echo "London         $LD"
    echo "Budapest       $BP"
    echo "Pacific        $PT"
    echo "Tokyo          $TK"
}

PYTHON_UTIL=/Users/stephenwan/Utilities/python

function tounixtime() {
  python ${PYTHON_UTIL}/tounixtime.py $1
}

function fromunixtime() {
  python ${PYTHON_UTIL}/fromunixtime.py $1
}
