#!/usr/bin/env cwl-runner

baseCommand:
- qtlseq
class: CommandLineTool
cwlVersion: v1.0
id: qtlseq
inputs:
- doc: ', --ref         Reference fasta.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ', --parent      fastq or bam of parent. If you specify fastq, please separate
    pairs by comma, e.g. -p fastq1,fastq2. You can use this optiion multiple times'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ', --bulk1      fastq or bam of bulk 1. If you specify fastq, please separate
    pairs by comma, e.g. -b1 fastq1,fastq2. You can use this optiion multiple times'
  id: b1
  inputBinding:
    prefix: -b1
  type: boolean
- doc: ', --bulk2      fastq or bam of bulk 2. If you specify fastq, please separate
    pairs by comma, e.g. -b2 fastq1,fastq2. You can use this optiion multiple times'
  id: b2
  inputBinding:
    prefix: -b2
  type: boolean
- doc: ', --N-bulk1    Number of individuals in bulk 1.'
  id: n1
  inputBinding:
    prefix: -n1
  type: boolean
- doc: ', --N-bulk2    Number of individuals in bulk 2.'
  id: n2
  inputBinding:
    prefix: -n2
  type: boolean
- doc: ', --out         Output directory. Specified name must not exist.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --filial      Filial generation. This parameter must be more than 1. [2]'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ', --threads     Number of threads. If you specify the number below one, then
    QTL-seq will use the threads as many as possible. [2]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ', --window      Window size (kb). [2000]'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ', --step        Step size (kb). [100]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ', --max-depth   Maximum depth of variants which will be used. [250]'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: ', --min-depth   Minimum depth of variants which will be used. [8]'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ', --N-rep       Number of replicates for simulation to make  null distribution.
    [5000]'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: Trim fastq using trimmomatic.
  id: trim
  inputBinding:
    prefix: --trim
  type: boolean
- doc: ', --adapter     FASTA of adapter sequences. This will be used when you specify
    "-T" for trimming.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: "Parameters for trimmomatic. Input parameters must be separated by comma with\
    \ following order: phred, ILLUMINACLIP, LEADING, TRAILING, SLIDINGWINDOW, MINLEN.\
    \ If you want to remove adapters of illumina, please specify FASTA of the adapter\
    \ sequences with \"--adapter\". Specified name will be inserted into <ADAPTER_FASTA>.\
    \ If you don't specify it, adapter trimming will be skipped. [33,<ADAPTER_FASTA>:2:30:10,20,20,4:15,75]"
  id: trim_params
  inputBinding:
    prefix: --trim-params
  type: boolean
- doc: ', --snpEff      Predict causal variant using SnpEff. Please check available
    databases in SnpEff.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Maximum memory per thread when bam sorted; suffix K/M/G recognized. [1G]
  id: mem
  inputBinding:
    prefix: --mem
  type: boolean
- doc: ', --min-MQ      Minimum mapping quality in mpileup. [40]'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ', --min-BQ      Minimum base quality in mpileup. [18]'
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: ', --adjust-MQ   "adjust-MQ" in mpileup. Default parameter is suited for BWA.
    [50]'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Consider multiple test correction derived by Huang et al. (2019). Please spesify
    a species name. With this option. QTL-seq produces a theoretical threshold. Currently,
    Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast
    are supported.
  id: species
  inputBinding:
    prefix: --species
  type: boolean
