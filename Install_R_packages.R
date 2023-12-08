#### Installing RStudio ####
#Make sure that you have a recent version of RStudio installed on your system. If not, you can download it from here - https://posit.co/download/rstudio-desktop/.

#### Using RStudio ####
#We hope that the registered participants are familiar with R and RStudio, and have some experience of working with the programming language. If you want a quick refresher, please take a look at either of these resources:

#1. https://www.jcu.edu.au/__data/assets/pdf_file/0004/1188310/R-Studio-Basics.pdf?external_link=true. The pdf is also present within the 'references' sub-folder in the workshop folder shared with you.
#2. https://rafalab.dfci.harvard.edu/dsbook/getting-started.html

#### Install the required R packages ####
# The following code for installing packages taken from the analysis code associated with Gopal et al., 2023 (https://doi.org/10.1098/rspb.2022.2513) available at https://github.com/abhitims/Evolutionary_diversity_of_WG_woody_plants under a MIT License, Copyright (c) 2023 Abhishek Gopal

#Code modified from https://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them
packages_install_load <- function(x){
  for( i in x ){
    #require returns TRUE invisibly if it was able to load package
    if( ! require( i , character.only = TRUE ) ){
      #If package was not able to be loaded then re-install
      install.packages( i , dependencies = TRUE )
      #Load package after installing
      require( i , character.only = TRUE )
    }
  }
}

#Loading and installing the necessary R packages
packages_install_load(c("sf", "terra","dplyr","ggplot2","tidyterra", "ggpubr", "rmarkdown"))

####