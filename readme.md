# Gene Photo Crop Project beta V11

**supporting the manager/lead creative solutions engineer VelveteenHammer**  

**I am not sure why the following worked. I'm looking for a smoother way**



 A work in progress project...

A project to batch crop a folder of images from Gene Poole using MacOS and
open source tools. Git is used as version control and GitHub used as build, share,
and maintenance platform. Simon's tavern is the starting point. Marker's Mark and
Hamm's fuel the project. Atom (atom.io) used as the text editor.

Goals:
  -crop an image
  -automate that process

Personal Goals;
  -share that information via GitHub
  -do all via the terminal

Possible future goal(s) :
  -automated with a Python script

way out there:
  -write a GoLang backend
  -write a  Gorilla front-end framework web-app



In the pipeline a python script or GoLang workflow



##

## Things that need to be Installed

package manager: Homebrew (https://brew.sh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
After Homebrew is installed

```bash
brew update && brew upgrade
```

Tools: ImageMagick (https://imagemagick.org)

```bash
brew install imagemagick
````


## Usage

after installing the above
In the terminal navigate to the folder where your images are located. Easy tip:
type cd then a space and drag and drop folder in terminal window.

Then paste
```bash
mkdir output
```
that makes a folder where the processed images will be stored


then paste
```bash
mogrify -resize 700x900! *.jpeg && mogrify -format jpeg *.jpeg && mogrify -crop 450x450+0+0 -path ./output *.jpeg
```
This is doing the work. The first part resizes images they are the same. Then the next command sure that all image are same format. And third part processes the cropping

the syntax:

In this case, the first two values after -crop (500x450) is the final size of the image you want to be cropped. The first value after the + (in this case, 0) is the x offset. That is the number of pixels from left to where you want the crop to start. The second value ( in this case, +0) is the x offset. That is the number of pixels from the top of the image where you the crop to start.

In this method, only images that need to be cropped will be cropped.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
