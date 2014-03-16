# Just a sprunge wrapper for fish-shell
# Paul Joannon (paulloz) <paul.joannon@gmail.com>

function sprunge
    if [ (isatty stdout) -e 1 ]
        if [ (count $argv) -gt 0 ]
            if [ -f $argv ]
                cat $argv
            else
                echo $argv
            end | curl -F 'sprunge=<-' http://sprunge.us
        end
    else
        curl -F 'sprunge=<-' http://sprunge.us
    end
end
