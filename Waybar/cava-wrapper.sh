### Audio Visualizer ###
BLOCKS=("▂" "▂" "▃" "▃" "▄" "▄" "▆" "▆" "█")

cava -p ~/.config/cava/cava.conf | while IFS= read -r line; do

    line=${line%;}
    

    IFS=';' read -ra values <<< "$line"
    

    output=""
    for v in "${values[@]}"; do

        v=$(( v > 8 ? 8 : v ))
        output+="${BLOCKS[$v]}"
    done
    
   
    echo "$output"
done
