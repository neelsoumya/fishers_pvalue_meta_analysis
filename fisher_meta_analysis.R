##############################################################################################
# Fisher's meta-analysis method
#   combining p-values
#   https://en.wikipedia.org/wiki/Fisher%27s_method
#
# Acknowledgements:
# adapted from 
#   https://cran.r-project.org/web/packages/metap/vignettes/metap.pdf
#
# Installation
# install.packages("metap")
##############################################################################################

###############################################
# Load library
###############################################
library(metap)

###############################################
# List of p-values
###############################################
pvals <- c(0.001, 0.001, 0.999, 0.999)
sumlog(pvals)

# plot p-values
# The plot method for class ‘metap’ calls schweder on the valid p-values.
# Inspection of the distribution of p-values is highly recommended as 
# extreme values in opposite directions do not cancel out. See last example. This may not be what you want.
schweder(pvals)

###############################################
# Example data
###############################################
data(teachexpect)
sumlog(teachexpect) # chisq = 69.473, df = 38, p = 0.0014, from Becker
schweder(teachexpect)
