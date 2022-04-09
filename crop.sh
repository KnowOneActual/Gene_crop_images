mogrify -resize 700x900! *.jpeg && mogrify -format jpeg *.jpeg && mogrify -crop 500x450+0+0 -path ./output *.jpeg
