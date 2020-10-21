# Data Collection via Web Scraping 

Evan Jones

Email: eajones3@umd.edu

Last updated: October 21, 2020

## Video

A video of the presentation can be found [here](https://www.dropbox.com/s/zndoq6v53xe85o6/web-scraping-jones.mp4?dl=0).

## Description

This presentation presents web scraping as a method for collection information of interest off of internet pages. It 

- Evan Jones introduces some of the basic packages and tools available in the R language for web scraping and interfacing with APIs. Particular attention is paid to understanding the structure of websites and how they operate so that participants feel comfortable extrapolating beyond the presented example to their own use cases. 

The entire lab is a self-contained R package that is available from Evan's github. It contains additional information and examples beyond what is covered in the video. The package can be installed in R via the following commands:

```
install.packages('remotes')
remotes::install_github('EandrewJones/how2scrape', build_vignettes = TRUE)
```

If asked to update any packages, please select none. The package will take a while to build the vignettes as it is actually scraping a website in the process of building so that the results are updated with each install.

If you run into any installation issues, please feel free to contact Evan at the email above.