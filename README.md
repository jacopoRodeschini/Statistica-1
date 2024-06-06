## Statistica - Prof. Colombi 
> Exercise session for the statistics I course (Prof. Colombi Roberto)

Tutor: Jacopo Rodeschini (jacopo.rodeschini [at] unibg.it)
Moodle: Statistica cod. 22019 a.a. 2022-24 ([page](https://elearning15.unibg.it/))

## How the exercise are organised
The exercise sessions will be useful to understand and solve probability and statistics problems. The exercises cover all topics discussed during the course.  The same type of exercises will be proposed in the exams.

The program is devised in two fundamental blocks. The first block covers probability computation and combinatoric calculus. The second block covers statistical inference, hypothesis testing and linear regression.  

For the exercises, we will use R software, so it could be useful to use during the lesson a personal PC with R software installed.

## How to Install R (ubuntu OS)
R is a programming language for statistical computing and graphics. R is used among data miners, bioinformaticians and statisticians for data analysis and developing statistical software. Official documentation for R installation can be found at the following [link](https://cran.r-project.org/bin/linux/ubuntu/fullREADME.html).

```.sh
# Add the r-project repository. 

$ sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

# To install the complete R system, use
$ sudo apt update
$ sudo apt install r-base

# Open R session (Terminal)
$ R
```

Example of the R session
```.R
> 1 + 2
[1] 3

> c(1,2)
[1] 1 2

> c(1,2) * c(2,3)
[1] 2 6
```

### How to Install RStudio (ubuntu OS)
Early developers preferred to run R via the command line console, succeeded by those who prefer an integrated development environment (IDE) like RStudio. Rstudio is available in two formats: RStudio Desktop is a regular desktop application while RStudio Server runs on a remote server and allows accessing RStudio using a web browser.

To install Rstudio, go to the [downolad page](https://www.rstudio.com/products/rstudio/download/#download) and select the correct version of IDE. 

```
# Download the RStudio Packages
$ cd Downlaod
$ wget https://download1.rstudio.org/electron/bionic/amd64/rstudio-2022.12.0-353-amd64.deb
$ sudo apt intall rstudio-2022.12.0-353-amd64.deb
```

Now we can open the Rstudio desktop app.

### Install R library
R's capabilities are extended through user-created packages (or libraries), which offer statistical techniques, graphical devices, import/export, etc. These packages are easy to instal. To install libraries open RStudio and type this line. 

```.R
# install.packages("packages_name") i.e.:
install.packages(tidyverse) # install library
install.packages("tidyverse", dependencies = TRUE )

# use the library in the script 
library(tidyverse) # add library

```

## Structure of lesson
> which topics are discussed:

- **Lesson 1:** Combinatoric calculus and probability computation. 
- **Lesson 2:** Combinatoric calculus and probability computation. 
- **Lesson 3:** Random variable and probability distribution.
- **Lesson 4:** Discrte random variable.
- **Lesson 5:** Continuous random variable.
- **Lesson 6:** Central limit theorem (CLT) & inference (mean and variance).
- **Lesson 7:** Inference (mean, variance and probability).
- **Lesson 8:** Hypothesis testing (p-value).
- **Lesson 9:** Linear regression (OLS) and parameters inference.
- **Lesson 10:** Linear regression (prediction, inference and coefficient of determination).
- **Lesson 11:** Maximum Likelihood Estimation (MLE).

 





