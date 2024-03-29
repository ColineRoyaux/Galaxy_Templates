
#Rscript

#################################
##      Compute a summary      ##
#################################

#####Packages : None
#suppressMessages(library(#packageName#))

#####Load arguments provided trough interface in the same order as written in the <command> flag of the XML

args = commandArgs(trailingOnly=TRUE)

if (length(args)==0) 
{
    stop("This tool needs at least one argument")
}else{
    Table <- args[1]
    sep <- as.character(args[2])
    dec <- as.character(args[3])
    HR <- args[4]
    #Add any other argument you need
}

#Correcting the Galaxy boolean to the R boolean
if (HR == "false"){ HR <- FALSE } else { HR <- TRUE }

#####Import data
Data <- read.table(Table, sep = sep, dec = dec, header = HR, encoding = "UTF-8")

#####Your analysis : write your generalized executive steps 

output

#####Write output in a file
write(output, "filename.txt")
