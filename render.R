# render script

rmarkdown::render("data_handling.Rmd", output_format = "revealjs::revealjs_presentation", output_file = "data_handling_s.html")
rmarkdown::render("data_handling.Rmd", output_format = "html_document", output_file = "data_handling_d.html")
rmarkdown::render("ggplot.Rmd", output_format = "revealjs::revealjs_presentation", output_file = "ggplot2_s.html")
rmarkdown::render("ggplot.Rmd", output_format = "html_document", output_file = "ggplot2_d.html")
rmarkdown::render("leaflet_lite.Rmd", output_format = "revealjs::revealjs_presentation", output_file = "leaflet_lite_s.html")




# for leaflet in reveal.js
knit_print.htmlwidget <- function (widget, ..., options = NULL) 
{
	#  WIDTH  <- "100%"
	#  HEIGHT <- 500
	
	file <- basename(tempfile(fileext = ".html"))
	selfcontained <- if(is.null(rmarkdown::metadata$self_contained)) TRUE else rmarkdown::metadata$self_contained
	
	htmlwidgets::saveWidget(widget, file = file, selfcontained = selfcontained)
	content <- if (selfcontained) {
		on.exit(unlink(file), add = TRUE)
		list(srcdoc = paste(readLines(file), collapse = "\n")) 
	}
	else {
		list(src = file)
	}
	
	x <- htmltools::tag("iframe", content)
	
	knitr::knit_print(x, options = options, ...)
}