args=$@
vim=/opt/local/bin/vim
cs=`$vim --version | grep "+clientserver"`
if [ "$cs" ]
then
    #Only use one instance of vim
    if [ "$args" ]
    then
        command vim --servername vim --remote-silent $@
    else
        pss=`ps`
        temp=`echo $pss | grep -w "vim"`
        if [ "$temp" ]
        then
            echo "vim already open"
            echo "$args"
            $vim –-servername vim –-remote $args
        else
            $vim --servername vim $args
        fi
    fi
else
  $vim $@
fi
