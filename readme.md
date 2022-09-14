# Gene's Photo Crop Project en beta --V16--

!!The project worked, and the customer was happy with the results.!!


**supporting the Project Manager/lead creative solutions engineer VelveteenHammer**  

**I am not sure why the following worked. I'm looking for a smoother way**

**I honestly don't understand how 0 offset is working**





 A work-in-progress project...

A project to batch crop a folder odd sized of images from Gene Poole using MacOS and
open-source tools. 
Git is used as version control, and GitHub is used as a build, share,
and maintenance platform. 
Simon's tavern is the work site. Atom (atom.io) is used as the text editor.

Goals:
  -Batch convert to one format, resize and crop an image 
  -automate that process on macOS

Personal Goals:
  -Share information via GitHub
  -do all via the terminal

Possible future goal(s):
  -automated with a Python script

Pre-project
  -Research what others may have done.. no need to rework the wheel.
  Learn from other people.

A website that helped:
    -https://deparkes.co.uk/2015/04/30/batch-crop-images-with-imagemagick/
    -https://stackoverflow.com/questions/30414346/batch-command-for-imagemagick-to-convert-all-files-in-a-directory-and-sub-direct
    -https://imagemagick.org/script/command-line-processing.php
    -https://www.youtube.com/watch?v=SPwyp2NG-bE

In the pipeline, a python script



##

## Things that need to be Installed

Package manager: Homebrew (https://brew.sh) **If you have HomeBrew installed, skip this step.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
After Homebrew is installed

```bash
brew update && brew upgrade
```

Tools: ImageMagick (https://imagemagick.org)

```bash
brew install ImageMagick
````


## Usage

after installing the above
In the terminal, navigate to the folder where your images are located. Easy tip:
Type cd, then a space, and drag and drop the folder in a terminal window.

Then paste
```bash
mkdir output
```
That makes a folder called output, where the processed images will be stored.


then paste
```bash
mogrify -format jpeg *.jpeg && mogrify -resize 700x900! *.jpeg && mogrify -crop 450x450+0+0 -path ./output *.jpeg
```
This is doing the work. The first part ensures that all images are in the same format. Then the following command resizes images so they are the same. And third part processes the cropping.         

The syntax:

In this case, the first two values after -crop (450x450) is the final size of the image you want to be cropped. The first value after the + (in this case, 0) is the x offset. That is the number of pixels from the left to where you want the crop to start. The second value ( in this case, +0) is the x offset. That is the number of pixels from the top of the image where you crop.


## Contributing
Pull requests are welcome. Please open an issue to discuss what you want to change for major changes.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
