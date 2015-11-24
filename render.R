# render script

rmarkdown::render("data_handling.Rmd", output_format = "revealjs::revealjs_presentation", output_file = "data_handling_s.html")
rmarkdown::render("data_handling.Rmd", output_format = "html_document", output_file = "data_handling_d.html")
rmarkdown::render("ggplot.Rmd", output_format = "revealjs::revealjs_presentation", output_file = "ggplot2_s.html")
rmarkdown::render("ggplot.Rmd", output_format = "html_document", output_file = "ggplot2_d.html")
