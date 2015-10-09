# BatchTrimVideo-WithoutReEncode
Utility to trim vides on batches without re-encoding to avoid lots of time and resource.

#Instructions(Linux / Mac)
- Download the ffmpeg libraries from its official [page](http://ffmpeg.org/download.html)
- Update the path of ffmpeg on CropVideos.sh
- Optional: Give execution permission for ffmpeg:
sudo chmod +x /usr/bin/ffmpeg

-Place all of your input video files on source folder
-Configure the trim ranges on CropVideos.sh
-Start the batch operation:
> sh CropVideos.sh


