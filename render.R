options(repos = c(CRAN = "https://cloud.r-project.org"))
required <- c("rmarkdown", "leaflet")
missing <- required[!vapply(required, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing)) install.packages(missing)
rmarkdown::render("index.Rmd", output_file = "index.html")
