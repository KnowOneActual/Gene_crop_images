# Gene Photo Crop Project beta V11

 A work in progress...

**I am not sure the following worked. I'm looking for a smoother way**

A project to batch crop a folder of photos using MacOS and open source tools

in the pipeline a python script or GoLang workflow



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
mogrify -resize 700x900! *.jpeg && mogrify -format jpeg *.jpeg && mogrify -crop 500x450+0+0 -path ./output *.jpeg
```
This is doing the work. The first part resizes images they are the same. Then the next command sure that all image are same format. And second part processes the cropping

the syntax:

In this case, the first two values after -crop (500x450) is the final size of the image you want to be cropped. The first value after the + (in this case, 0) is the x offset. That is the number of pixels from left to where you want the crop to start. The second value ( in this case, +0) is the x offset. That is the number of pixels from the top of the image where you the crop to start.

In this method, only images that need to be cropped will be cropped.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
