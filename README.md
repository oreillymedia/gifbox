# gifbox

This installs everything you need to turn a movie into a gif, as described here:

http://superuser.com/questions/436056/how-can-i-get-ffmpeg-to-convert-a-mov-to-a-gif

Basically, you need to:

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

The first command will produce a *huge* animated gif version of the movie.  The second command will optimize it, as descibed in the superuser post.


