# Convert a problematic MPEG-4 (mp4v) file into a web-friendly H.264 + AAC format.
# This ensures full browser compatibility (Chrome, Safari, Firefox, Edge, etc.)
# and avoids playback issues caused by unsupported codecs.

ffmpeg -i assets/videos/comparisons/test/4_amt_interpolation.mp4 \
  -c:v libx264 -pix_fmt yuv420p -profile:v high -level 4.1 \
  -crf 18 -preset medium -movflags +faststart \
  -c:a aac -b:a 128k -ar 48000 \
  assets/videos/comparisons/test/4_amt_interpolation_h264.mp4
