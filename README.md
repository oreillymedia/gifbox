# gifbox

This installs everything you need to turn a movie into a gif.  Basically, you need to:

* Clone this repo
* Install vagrant and virtualbox
* "vagrant up" to provision the box
* "vagrant ssh" to log in
* Sometimes you have to run "sudo apt-get install ffmpeg"
* Change directory to "/host", which will map to the directory one level up from where you downloaded this repo

Once you're this far, you need to create some small videos so that they are visible in "/host"  (i.e., you put thum in the directory one level up from thos repo on your local machine.)  

Then, you run these two commands:

```
ffmpeg -i insert_image.mov -pix_fmt rgb24 -r 12 -s 576x360 insert_image.gif
convert -layers Optimize insert_image.gif insert_image_optimized.gif
```

The first command will produce a *huge* animated gif version of the movie.  The second command will optimize it.

Here are some great links that will explain more about FFMPEG:

* http://superuser.com/questions/436056/how-can-i-get-ffmpeg-to-convert-a-mov-to-a-gif
* http://blog.room208.org/post/48793543478
* http://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality



## Various tests

ffmpeg -i system_intro.mov -pix_fmt rgb24 -r 12 -s 648x405 system_intro2.gif
convert -layers Optimize system_intro2.gif system_intro2_optimized.gif





http://superuser.com/questions/556029/how-do-i-convert-a-video-to-gif-using-ffmpeg-with-reasonable-quality



ffmpeg -i make_presentations.mov -vf scale=640:-1 -r 12 frames/ffout%03d.png
convert -delay 5 -loop 0 -coalesce -layers Optimize  frames/ffout*.png make_presentations.gif




convert -layers Optimize make_a_book.gif make_a_book_optimized.gif



3) ffmpeg -i insert_image.mov -vf scale=640:-1 -t 10 -r 10 alt_scale.gif

## Using other codecs

This will convert a file from mp4 (produced by screenflow) to webm (a format supported by other browsers):

```
ffmpeg -i visual_editor.mp4 -acodec libvorbis -aq 5 -ac 2 -qmax 25 -threads 2 visual_editor.webm
```

Once you've uploaded them to a hosting service, you can embed them to autoplay on a pge using markup like this:

```
<video autoplay="true" loop="true" muted="true" width="640">
	<source src="https://s3.amazonaws.com/orm-atlas-media/introducingatlas/visual_editor.mp4" type="video/mp4" /> 
	<source src="https://s3.amazonaws.com/orm-atlas-media/introducingatlas/visual_editor.webm" type="video/webm" /> Your browser does not support the video tag.</video>
</section>
```



