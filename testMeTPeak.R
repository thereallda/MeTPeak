# example
# devtools::install_github("thereallda/MeTPeak")
# BiocManager::install("txdbmaker")
library(MeTPeak)

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

# load output
load("example/metpeak.Rdata")
names(tmp_rs) # tempoary results
# peak results
metpeak_df <- read.table("example/peak.bed", sep="\t")
# cols: chr	chromStart	chromEnd	name	score	strand	thickStart	thickEnd	itemRgb	blockCount	blockSizes	blockStarts	lg.p	lg.fdr	fold_enrchment
head(metpeak_df)
