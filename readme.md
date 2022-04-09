# Gene Photo Crop Project beta V7

A project to batch crop a folder of photos as using the MacOS and open source tools

##

## Things that need to be Installed

package manager: Homebrew (https://brew.sh)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
After Homebrew is instaled

```bash
brew update && brew upgrade
```

Tools: ImageMagick (https://imagemagick.org)

```bash
brew install imagemagick
````


## Usage


In the terminal navigate to the folder where your images are located. Easy tip:
type cd then a space and drag and drop folder in terminal window.

```bash
mkdir output
```


```bash
mogrify -format png *.png && mogrify -crop 1000x1000+1550+0 -path ./output *.png
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
