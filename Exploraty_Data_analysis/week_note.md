###graph
example("points")#列出例子，特别是符号与颜色

with(dataset,label1,label2)#使用数据集dataset两列数据绘图
boxplot(label1~label2,dataset,xlab = 'name1',ylab = 'name2')
#箱函数

#基础绘图参数
#pch: 绘图标志（默认为圆圈）
#lty: 线条类型，默认实线，可为虚线等
#lwd: 线宽度

#col: 绘图标志的颜色；the colors() function gives
#you a vector of colors by name

#xlab: character string for the x-axis label
#ylab: character string for the y-axis label


#par参数
las: 轴的方向
bg: 背景颜色
mar: 页边距
oma: 外边距 (default is 0 for all sides)
mfrow: 绘图的个数 (plots are filled row-wise)
mfcol: 绘图的个数 (plots are filled column-wise)
#区别
mfrow = c(2,2)#使用顺序（1，1）》（1，2）》（2，1）》（2，2）
mfcol = c(2,2)#使用顺序（1，1）》（2，1）》（1，2）》（2，2）

#其他
plot: make a scatterplot, or other type of plot depending on the class of the object being plotted

main:标题

lines: add lines to a plot, given a vector x values and a corresponding vector of y values (or a 2-

column matrix); this function just connects the dots

points: add points to a plot

text: add text labels to a plot using specified x, y coordinates

title: add annotations to x, y axis labels, title, subtitle, outer margin

lenged:图例 byt="n"是无框

mtext: add arbitrary text to the margins (inner or outer) of the plot

axis: adding axis ticks/labels

outer:未知
mgp：第一个数值控制xlab和ylab的位置,第二个数值影响的是坐标轴对应的标签的位置，第三个数值坐标轴的轴线的位置

cex.lab:x-lab与y-lab的字体大小位置
cex.axis:坐标轴字体大小


#par()使用
par(mar = c(2,2,2,1))#设定相关值
par('mar') #查看相关值



A graphics device is something where you can make a plot appear
When you make a plot in R, it has to be "sent" to a specific graphics device
The most common place for a plot to be "sent" is the screen device
·
A window on your computer (screen device)
A PDF file (file device)
A PNG or JPEG file (file device)
A scalable vector graphics (SVG) file (file device)
·
·
On a Mac the screen device is launched with the quartz()
On Windows the screen device is launched with windows()
On Unix/Linux the screen device is launched with x11()

###plot created
1. Explicitly launch a graphics device
2. Call a plotting function to make a plot (Note: if you are using a file device, no plot will appear on
the screen)
3. Annotate plot if necessary
4. Explicitly close graphics device with dev.off() (this is very important!)
pdf(file = "myplot.pdf") ## Open PDF device; create 'myplot.pdf' in my working directory
## Create plot and send to a file (no plot appears on screen)
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data") ## Annotate plot; still nothing on screen
dev.off() ## Close the PDF file device
## Now you can view the file 'myplot.pdf' on your computer

###There are two basic types of file devices: vector and bitmap devices
##Vector formats:
#pdf: useful for line-type graphics, resizes well, usually portable, not efficient if a plot has many
objects/points

#svg: XML-based scalable vector graphics; supports animation and interactivity, potentially useful for web-based plots

#win.metafile: Windows metafile format (only on Windows)

#postscript: older format, also resizes well, usually portable, can be used to create encapsulated postscript files; Windows systems often don’t have a postscript viewer

##Bitmap formats
#png: bitmapped format, good for line drawings or images with solid colors, uses lossless compression (like the old GIF format), most web browsers can read this format natively, good for plotting many many many points, does not resize well

#jpeg: good for photographs or natural scenes, uses lossy compression, good for plotting many many many points, does not resize well, can be read by almost any computer and any web browser, not great for line drawings

#tiff: Creates bitmap files in the TIFF format; supports lossless compression

#bmp: a native Windows bitmapped format



###Multiple Open Graphics Devices Multiple Open Graphics Devices
It is possible to open multiple graphics devices (screen, file, or both), for example when viewing
multiple plots at once
Plotting can only occur on one graphics device at a time
The currently active graphics device can be found by calling dev.cur()
Every open graphics device is assigned an integer .
You can change the active graphics device with dev.set(<integer>) where <integer> is the
number associated with the graphics device you want to switch to

###Copying Plots Copying Plots
Copying a plot to another device can be useful because some plots require a lot of code and it can
be a pain to type all that in again for a different device.
NOTE: Copying a plot is not an exact operation, so the result may not be identical to the original.
dev.copy: copy a plot from one device to another
dev.copy2pdf: specifically copy a plot to a PDF file
·
·
library(datasets)
with(faithful, plot(eruptions, waiting)) ## Create plot on screen device
title(main = "Old Faithful Geyser data") ## Add a main title
dev.copy(png, file = "geyserplot.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
#例子：
目录中名为mygraph.pdf的PDF文件中：

> pdf("mypdf")

> attach(mtcars)

> plot(wt,mpg)

> abline(lm(mpg~wt))

> title("hahahah")

> detach(mtcars)

> dev.off()

#除了pdf()，还可以使用函数win.metafile()、png()、jpeg()、bmp()、tiff()、xfig()

和postscript()将图形保存为其他格式。