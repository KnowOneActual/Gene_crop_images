# Gene Photo Crop Project beta V7

 A work in progress...

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
mogrify -format png *.png && mogrify -crop 1000x1000+1550+0 -path ./output *.png
```
This is doing the work. The first part moke sure that all image are same format. And second part processes the cropping

the syntax:
(note: you can change png to jpeg or what format you have to work with. example if you are working with jpeg then mogrify -format jpeg *.jpeg )
In this case, the first two values after -crop (1000x1000) is the final size of the image you want to be cropped. The first value after the + (in this case, 1550) is the x offset. That is the number of pixels from left to where you want the crop to start. The second value ( in this case, +0) is the x offset. That is the number of pixels from the top of the image where you the crop to start.

In this method, only images that need to be cropped will be cropped.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
