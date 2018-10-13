ffmpeg -i input_video.mp4 -ss 00:00:33 -t 00:00:10 -c:v copy -c:a copy cropped.mp4
convert -depth 8 -resize 50% -background none plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -filter_complex "[0:v][1:v]overlay=0:446:enable=between(t\,1\,9)" -c:a copy plated.mp4
ffmpeg -i plated.mp4  -vf drawtext="fontfile=Arial.ttf: text='I am learning computer graphics!': fontsize=24: fontcolor=black:  x=200:  y=476: enable=between(t\,2\,9)"  -c:a copy result.mp4

