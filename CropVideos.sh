alias ffmpeg="/Users/shahul/Softwares/ffmpeg"
rm -f output/*.mp4
cd source
for f in *.mp4; do
    duration=$(ffmpeg -i "$f" 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,//)
    length=$(echo "$duration" | awk '{ split($1, A, ":"); print 3600*A[1] + 60*A[2] + A[3] }' )
    trim_start=9
    trim_end=$(echo "$length" - 20 - "$trim_start" | bc)

#Just Prints the commands without executing it
    #ffmpeg -ss "$trim_start" -i "$f" -c copy -map 0 -t "$trim_end" "../output/${f%.mp4}-trimmed.mp4"

#Executing the commands
    ffmpeg -ss "$trim_start" -i "$f" -c copy -map 0 -t "$trim_end" "../output/${f%.mp4}-trimmed.mp4"
done
