# Amaranth-phylogenetics
The master repo for Amaranthus phylogenetic study using 3RAD data

## This project includes estimating the phylogeny using different types of methods: 
*  Genome-wide SNP frequencies, combining relationships between sets of 4 taxa (quartets) to estimate phylogeny for all samples. 
*  Concatenating all RAD loci and using maximum likelihood to estimate the phylogeny for consensus sequences for each species.
*  Species tree estimation from gene trees using the multispecies coalescent. 

We tested different length "genes" in the gene tree methods by combining RAD loci aligned to a reference sequence using different size genomic windows. 
We tested different reference genomes to best for biases in % reads aligned across species. 

### This project also includes node dating (estimating the age of diversification) of *Amaranthus* using different methods:
*   Bayesian MCMC analysis using concatenated loci in MrBayes.
*   Bayesian MCMC analysis using gene trees in SuperBPP.

### This project also includes investigation of hybridization throughout the genus using different methods:
*   Hypothesis testing using a network multispecies coalescent model in Snaq.
*   Model fitting using a network multispecies coalescent model in Nanuq.
