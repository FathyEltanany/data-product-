---
title       : Data Product Project
subtitle    : shiny application  
author      : Fathy Eltanany
job         : 8/9/2017
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## what's the app about


>1. plotting random points
>2. using shiny ui's gadgets to adjust the appearance of plot 


--- .class #id 

## default plot



```r
dataX <- runif(1000)
dataY <- runif(1000)

p<-plot_ly(x = ~dataX, y = ~dataY, type = "scatter")%>%
        
        layout(
                xaxis = list(title  = "x axis"),
                yaxis = list(title  = "y axis ")
                )
```

---

<iframe src="demo.html" style="position:absolute;height:100%;width:100%"></iframe>


---
## plot after changes

```r
dataX <- runif(500)
dataY <- runif(500)

p2<-plot_ly(x = ~dataX, y = ~dataY, type = "scatter")%>%
        
        layout(
                xaxis = list(title  = "mpg"),
                yaxis = list(title  = "hp ")
                )
```


---

<iframe src="demo2.html" style="position:absolute;height:100%;width:100%"></iframe>

---
## conclusion

> 1.link for the app 
> https://fathyeltanany.shinyapps.io/dataProduct_project/

---
Thanks 
---
