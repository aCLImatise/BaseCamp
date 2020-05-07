class: CommandLineTool
id: qtlseq.cwl
inputs:
- id: r
  doc: ', --ref         Reference fasta.'
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: ', --parent      fastq or bam of parent. If you specify fastq, please separate
    pairs by comma, e.g. -p fastq1,fastq2. You can use this optiion multiple times'
  type: boolean
  inputBinding:
    prefix: -p
- id: b1
  doc: ', --bulk1      fastq or bam of bulk 1. If you specify fastq, please separate
    pairs by comma, e.g. -b1 fastq1,fastq2. You can use this optiion multiple times'
  type: boolean
  inputBinding:
    prefix: -b1
- id: b2
  doc: ', --bulk2      fastq or bam of bulk 2. If you specify fastq, please separate
    pairs by comma, e.g. -b2 fastq1,fastq2. You can use this optiion multiple times'
  type: boolean
  inputBinding:
    prefix: -b2
- id: n1
  doc: ', --N-bulk1    Number of individuals in bulk 1.'
  type: boolean
  inputBinding:
    prefix: -n1
- id: n2
  doc: ', --N-bulk2    Number of individuals in bulk 2.'
  type: boolean
  inputBinding:
    prefix: -n2
- id: o
  doc: ', --out         Output directory. Specified name must not exist.'
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ', --filial      Filial generation. This parameter must be more than 1. [2]'
  type: boolean
  inputBinding:
    prefix: -F
- id: t
  doc: ', --threads     Number of threads. If you specify the number below one, then
    QTL-seq will use the threads as many as possible. [2]'
  type: boolean
  inputBinding:
    prefix: -t
- id: w
  doc: ', --window      Window size (kb). [2000]'
  type: boolean
  inputBinding:
    prefix: -w
- id: s
  doc: ', --step        Step size (kb). [100]'
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: ', --max-depth   Maximum depth of variants which will be used. [250]'
  type: boolean
  inputBinding:
    prefix: -D
- id: d
  doc: ', --min-depth   Minimum depth of variants which will be used. [8]'
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: ', --N-rep       Number of replicates for simulation to make  null distribution.
    [5000]'
  type: boolean
  inputBinding:
    prefix: -N
- id: trim
  doc: Trim fastq using trimmomatic.
  type: boolean
  inputBinding:
    prefix: --trim
- id: a
  doc: ', --adapter     FASTA of adapter sequences. This will be used when you specify
    "-T" for trimming.'
  type: boolean
  inputBinding:
    prefix: -a
- id: trim_params
  doc: "Parameters for trimmomatic. Input parameters must be separated by comma with\
    \ following order: phred, ILLUMINACLIP, LEADING, TRAILING, SLIDINGWINDOW, MINLEN.\
    \ If you want to remove adapters of illumina, please specify FASTA of the adapter\
    \ sequences with \"--adapter\". Specified name will be inserted into <ADAPTER_FASTA>.\
    \ If you don't specify it, adapter trimming will be skipped. [33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
  type: boolean
  inputBinding:
    prefix: --trim-params
- id: e
  doc: ', --snpEff      Predict causal variant using SnpEff. Please check available
    databases in SnpEff.'
  type: boolean
  inputBinding:
    prefix: -e
- id: mem
  doc: Maximum memory per thread when bam sorted; suffix K/M/G recognized. [1G]
  type: boolean
  inputBinding:
    prefix: --mem
- id: q
  doc: ', --min-MQ      Minimum mapping quality in mpileup. [40]'
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: ', --min-BQ      Minimum base quality in mpileup. [18]'
  type: boolean
  inputBinding:
    prefix: -Q
- id: c
  doc: ', --adjust-MQ   "adjust-MQ" in mpileup. Default parameter is suited for BWA.
    [50]'
  type: boolean
  inputBinding:
    prefix: -C
- id: species
  doc: Consider multiple test correction derived by Huang et al. (2019). Please spesify
    a species name. With this option. QTL-seq produces a theoretical threshold. Currently,
    Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast
    are supported.
  type: boolean
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- qtlseq
