library(harmony)
library(Seurat)
library(Signac)
library(future)
plan("multisession", workers = 32)
options(future.globals.maxSize = 200 * 1024 ^ 3) # for 200 Gb RAM

seurat <- readRDS("tmp_seurat.RDS")


# Normalization and Clustering
seurat <- BinarizeCounts(seurat)
seurat <- SCTransform(seurat,
                      verbose = T,
                      vars.to.regress = "peak_region_fragments",
                      do.correct.umi = F,
                      assay = "peaks",
                      variable.features.n = NULL,
                      return.only.var.genes = F,
                      do.scale = T,
                      do.center = T)
saveRDS(seurat, file = "sct_seurat.RDS", ccompress = F)