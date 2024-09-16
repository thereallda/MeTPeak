
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MeTPeak

## Update

Update the original package to compile with the current Bioconductor packages. (2024/09/16)

> Modify following script:
>
> `R/get.check.points.reads.count.R`
>
> `R/read.gtf.R`

Below is the example from MeTPeak

``` r
devtools::install_github("thereallda/MeTPeak")
```

``` r
library(MeTPeak)
#> Loading required package: Rsamtools
#> Loading required package: GenomeInfoDb
#> Loading required package: BiocGenerics
#> 
#> Attaching package: 'BiocGenerics'
#> The following objects are masked from 'package:stats':
#> 
#>     IQR, mad, sd, var, xtabs
#> The following objects are masked from 'package:base':
#> 
#>     anyDuplicated, aperm, append, as.data.frame, basename, cbind,
#>     colnames, dirname, do.call, duplicated, eval, evalq, Filter, Find,
#>     get, grep, grepl, intersect, is.unsorted, lapply, Map, mapply,
#>     match, mget, order, paste, pmax, pmax.int, pmin, pmin.int,
#>     Position, rank, rbind, Reduce, rownames, sapply, setdiff, table,
#>     tapply, union, unique, unsplit, which.max, which.min
#> Loading required package: S4Vectors
#> Loading required package: stats4
#> 
#> Attaching package: 'S4Vectors'
#> The following object is masked from 'package:utils':
#> 
#>     findMatches
#> The following objects are masked from 'package:base':
#> 
#>     expand.grid, I, unname
#> Loading required package: IRanges
#> Loading required package: GenomicRanges
#> Loading required package: Biostrings
#> Loading required package: XVector
#> 
#> Attaching package: 'Biostrings'
#> The following object is masked from 'package:base':
#> 
#>     strsplit
#> Loading required package: GenomicFeatures
#> Loading required package: AnnotationDbi
#> Loading required package: Biobase
#> Welcome to Bioconductor
#> 
#>     Vignettes contain introductory material; view with
#>     'browseVignettes()'. To cite Bioconductor, see
#>     'citation("Biobase")', and for packages 'citation("pkgname")'.
#> Loading required package: rtracklayer
#> Loading required package: GenomicAlignments
#> Loading required package: SummarizedExperiment
#> Loading required package: MatrixGenerics
#> Loading required package: matrixStats
#> 
#> Attaching package: 'matrixStats'
#> The following objects are masked from 'package:Biobase':
#> 
#>     anyMissing, rowMedians
#> 
#> Attaching package: 'MatrixGenerics'
#> The following objects are masked from 'package:matrixStats':
#> 
#>     colAlls, colAnyNAs, colAnys, colAvgsPerRowSet, colCollapse,
#>     colCounts, colCummaxs, colCummins, colCumprods, colCumsums,
#>     colDiffs, colIQRDiffs, colIQRs, colLogSumExps, colMadDiffs,
#>     colMads, colMaxs, colMeans2, colMedians, colMins, colOrderStats,
#>     colProds, colQuantiles, colRanges, colRanks, colSdDiffs, colSds,
#>     colSums2, colTabulates, colVarDiffs, colVars, colWeightedMads,
#>     colWeightedMeans, colWeightedMedians, colWeightedSds,
#>     colWeightedVars, rowAlls, rowAnyNAs, rowAnys, rowAvgsPerColSet,
#>     rowCollapse, rowCounts, rowCummaxs, rowCummins, rowCumprods,
#>     rowCumsums, rowDiffs, rowIQRDiffs, rowIQRs, rowLogSumExps,
#>     rowMadDiffs, rowMads, rowMaxs, rowMeans2, rowMedians, rowMins,
#>     rowOrderStats, rowProds, rowQuantiles, rowRanges, rowRanks,
#>     rowSdDiffs, rowSds, rowSums2, rowTabulates, rowVarDiffs, rowVars,
#>     rowWeightedMads, rowWeightedMeans, rowWeightedMedians,
#>     rowWeightedSds, rowWeightedVars
#> The following object is masked from 'package:Biobase':
#> 
#>     rowMedians

# in the real case, change the gtf to what you need
gtf <- system.file('extdata','example.gtf',package='MeTPeak')
# tmp <- rtracklayer::import(gtf)

ip1 <- system.file('extdata','IP1.bam',package='MeTPeak')
ip2 <- system.file('extdata','IP2.bam',package='MeTPeak')
ip3 <- system.file('extdata','IP3.bam',package='MeTPeak')
input1 <- system.file('extdata','Input1.bam',package='MeTPeak')
input2 <- system.file('extdata','Input2.bam',package='MeTPeak')
input3 <- system.file('extdata','Input3.bam',package='MeTPeak')

IP_BAM <- c(ip1,ip2,ip3)
INPUT_BAM <- c(input1,input2,input3)

metpeak(GENE_ANNO_GTF=gtf,
        IP_BAM = IP_BAM,INPUT_BAM = INPUT_BAM,
        EXPERIMENT_NAME="example",
        OUTPUT_DIR = "./")
#> Import genomic features from the file as a GRanges object ...
#> OK
#> Prepare the 'metadata' data frame ... OK
#> Make the TxDb object ... OK
#> 'select()' returned 1:many mapping between keys and columns
#> [1] "Divide transcriptome into chr-gene-batch sections ..."
#> [1] "Get Reads Count ..."
#> [1] "This step may take a few hours ..."
#> [1] "100 %"
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> Warning in .betabinomial.hmm(ip, input + bA): Could not update the Newton step ...
#> [1] 1
#> [1] 2
#> [1] 3
#> [1] 4
#> [1] 5
#> [1] 6
#> [1] 7
#> [1] 8
#> [1] 9
#> [1] 10
#> [1] 11
#> [1] 12
#> [1] 13
#> [1] "Peak calling analysis is completeted!"
```

After running `metpeak`, results will be directed to the folder (named in `OUTPUT_DIR/EXPERIMENT_NAME`). In the current case, results are stored at “./example” directory.

`MeTPeak` peak calling results stored at “peak.bed” and “peak.xls”

``` r
# load output
load("example/metpeak.Rdata")
names(tmp_rs) # tempoary results
#> [1] "ANNOTATION"          "ANNOTATION_BATCH_ID" "PARAMETERS"         
#> [4] "READS_COUNT"         "SAMPLE_ID"           "BAM_CHRS"
# peak results
metpeak_df <- read.table("example/peak.bed", sep="\t")
# cols: chr chromStart  chromEnd    name    score   strand  thickStart  thickEnd    itemRgb blockCount  blockSizes  blockStarts lg.p    lg.fdr  fold_enrchment
head(metpeak_df)
#>     V1        V2        V3    V4      V5 V6        V7        V8 V9 V10  V11 V12
#> 1 chr7 150742527 150742777 ABCB8 9.8e-05  + 150742527 150742777  0   1 250,   0
#> 2 chr7 150742876 150743176 ABCB8 9.8e-05  + 150742876 150743176  0   1 300,   0
#> 3 chr7 150743274 150743624 ABCB8 9.8e-05  + 150743274 150743624  0   1 350,   0
#> 4 chr7 150743722 150743972 ABCB8 9.8e-05  + 150743722 150743972  0   1 250,   0
#> 5 chr7 150819928 150820029 AGAP3 3.1e-04  + 150819928 150820029  0   1 101,   0
#> 6 chr7 150840973 150841373 AGAP3 6.3e-15  + 150840973 150841373  0   1 400,   0
```
