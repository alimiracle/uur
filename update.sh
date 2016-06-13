dir=`pwd`
    wget https://uruk.tuxfamily.org/q/q.up
     
    file=`ls`
    if echo "$file" | grep -q "upd.txt"; then
    q=1
    else
    echo >upd.txt
    fi
    if echo "$file" | grep -q "q.up"; then
    r=1
    else
python3 in-info.py
exit
    fi
     
    test=`cat q.up`
    test1=`cat upd.txt`
    if [ "$test" = "$test1" ]
    then
python3 nu-info.py
    rm q.up
    exit
    else
    git clone https://notabug.org/alimiracle/urukupdate
    fi
    gitfiles=`ls`
    if echo "$gitfiles" | grep -q "urukupdate"; then
    cd urukupdate
    else
python3 in-info.py
    rm q.up
    exit
    fi
     
    bin=`ls`
    if echo "$bin" | grep -q "install"; then
    chmod +x install
    ./install
    fi
     
    if echo "$bin" | grep -q "bin"; then
    cp -R bin /
    fi
     
    if echo "$bin" | grep -q "etc"; then
    cp -R etc /
    fi
    if echo "$bin" | grep -q "var"; then
    cp -R var /
    fi
     
    if echo "$bin" | grep -q "usr"; then
    cp -R usr /
    fi
     
    if echo "$bin" | grep -q "lib"; then
    cp -R lib /
    fi
     
    if echo "$bin" | grep -q "share"; then
    cp -R share /
    fi
    if echo "$bin" | grep -q "exe.sh"; then
    chmod +x exe.sh
    ./exe.sh
    fi
    cd $dir
    rm -R urukupdate
    cat q.up >upd.txt
    rm q.up
python3 update-info.py
