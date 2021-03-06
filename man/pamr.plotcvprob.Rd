\name{pamr.plotcvprob}
\alias{pamr.plotcvprob}
\title{ A function to plot the cross-validated sample probabilities from
  the nearest shrunken centroid
  classifier} 
\description{A function to plot the cross-validated sample probabilities from 
  the nearest shrunken centroid
  classifier}

\usage{
pamr.plotcvprob(fit, data, threshold)
}

\arguments{
  \item{fit}{The result of a call to pamr.cv}
  \item{data}{A list with at least two components: x- an expression
    genes in the rows, samples in the columns), and y-  a vector of
    the class labels for each sample. Same form as data object
    used by pamr.train.}
  \item{threshold}{Threshold value to be used}
}    

\details{
  \code{pamr.plotcvprob} plots the cross-validated sample probabilities  the from nearest shrunken
  centroid classifier, stratified by the true classses.
}



\author{ Trevor Hastie,Robert Tibshirani, Balasubramanian Narasimhan, and Gilbert Chu  }

\examples{
set.seed(120)
x <- matrix(rnorm(1000*20),ncol=20)
y <- sample(c(1:4),size=20,replace=TRUE)
mydata <- list(x=x,y=y)
mytrain <-   pamr.train(mydata)
mycv <-  pamr.cv(mytrain,mydata)
pamr.plotcvprob(mycv,mydata,threshold=1.6)



}


