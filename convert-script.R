## Script file to convert file to R script from a markdown file

hmw_filez <- list.files(here::here("assignment"),
                        pattern = '.*\\.(R|r|rmd|Rmd|Qmd|qmd)$')

full_path <- here::here("assignment", hmw_filez) # full path to file

if(!file.exists("feedback")){ # create a feedback folder if it doesnt exist
  dir.create("feedback")
  }

fextension <- tools::file_ext(full_path) # check file extension

if(str_detect(fextension, 'md')){
  knitr::purl(full_path, output = here::here("feedback",paste0(tools::file_path_sans_ext(hmw_filez), '.R'))) # convert to R script
  
  full_path <- here::here("feedback",paste0(tools::file_path_sans_ext(hmw_filez), '.R')) # update full path
  }
