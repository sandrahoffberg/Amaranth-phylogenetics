## R code to run nanuq. 
## The shows reticulations across the entire (species-level) tree and is much faster than snaq!
## November 16, 2020


library(MSCquartets)

genetrees=read.tree("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed/tub_cons_noMaxSNP_1Mb_100SNP.tree.csv")
nanook1 = NANUQ(
  genedata = genetrees,
  outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed/",
                      "NANUQ_1MB"),
  alpha = 1e-8, beta = .95, plot=TRUE
)


# can change alpha and beta here as many times as desired to find a probability simplex that looks best 
nanook2 = NANUQdist(nanook1, alpha = 1e-7, beta = 0.95,
                    outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed", "NANUQ_1MB"),
                    plot = TRUE)



####

genetrees2=read.tree("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed/tub_consensus_250kb.tree.csv")
nanook250 = NANUQ(
  genedata = genetrees2,
  outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed/",
                      "NANUQ_250kb"),
  alpha = 1e-8, beta = .95, plot=TRUE
)



nanook2 = NANUQdist(nanook250, alpha = 1e-7, beta = 0.95,
                    outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed", "NANUQ_250kb"),
                    plot = TRUE)



####

genetrees3=read.tree("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed/tub_consensus_500kb.tree.csv")
nanook500 = NANUQ(
  genedata = genetrees3,
  outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed",
                      "NANUQ_500kb"),
  alpha = 1e-8, beta = .95, plot=TRUE
)


nanook4 = NANUQdist(nanook500, alpha = 1e-7, beta = 0.95,
                    outfile = file.path("C:/Users/Sandra/OneDrive/Postdoc/tuberculatus_3RADplate/nanuq/asplundii_fixed", "NANUQ_500kb"),
                    plot = TRUE)


## Next, open tree in program SplitsTree
## This will draw the splits, and then you can open and change the colors in InkScape