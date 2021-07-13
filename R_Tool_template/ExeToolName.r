
#Rscript

#################################
##      Compute a summary      ##
#################################

#####Packages : None

#####Load arguments

args = commandArgs(trailingOnly=TRUE)

if (length(args)==0) 
{
    stop("This tool needs at least one argument")
}else{
    Table <- args[1]
    sep <- as.character(args[2])
    dec <- as.character(args[3])
    HR <- args[4]
}

if (HR == "false"){ HR <- FALSE } else { HR <- TRUE }

#####Import data
Data <- read.table(Table,sep=sep,dec=dec,header=HR,encoding="UTF-8")


#####Your analysis

sum <- capture.output(summary(Data))

write(sum, "Summary.txt")
