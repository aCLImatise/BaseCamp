#!/usr/bin/env cwl-runner

baseCommand:
- qtlplot
class: CommandLineTool
cwlVersion: v1.0
id: qtlplot
inputs:
- doc: ', --vcf            VCF file which contains parent, bulk1, and bulk2 in this
    order. This VCF file must have AD field.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ', --N-bulk1       Number of individuals in bulk 1.'
  id: n1
  inputBinding:
    prefix: -n1
  type: boolean
- doc: ', --N-bulk2       Number of individuals in bulk 2.'
  id: n2
  inputBinding:
    prefix: -n2
  type: boolean
- doc: ', --out            Output directory. Specified name can exist.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ', --filial         Filial generation. This parameter must be more than 1.
    [2]'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ', --threads        Number of threads. If you specify the number below one,
    then QTL-plot will use the threads as many as possible. [2]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: ', --window         Window size (kb). [2000]'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ', --step           Step size (kb). [100]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: ', --max-depth      Maximum depth of variants which will be used. [250]'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: ', --min-depth      Minimum depth of variants which will be used. [8]'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ', --N-rep          Number of replicates for simulation to make  null distribution.
    [5000]'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: ', --min-SNPindex   Cutoff of minimum SNP-index for clear results. [0.3]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ', --strand-bias    Filter spurious homo genotypes in cultivar using strand
    bias. If ADF (or ADR) is higher than this cutoff when ADR (or ADF) is 0, that
    SNP will be filtered out. If you want to supress this filtering, please set this
    cutoff to 0. [7]'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: ', --snpEff         Predict causal variant using SnpEff. Please check available
    databases in SnpEff.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: Output IGV format file to check results on IGV.
  id: igv
  inputBinding:
    prefix: --igv
  type: boolean
- doc: Consider multiple test correction derived by Huang et al. (2019). Please spesify
    a species name. With this option. QTL-seq produces a theoretical threshold. Currently,
    Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast
    are supported.
  id: species
  inputBinding:
    prefix: --species
  type: boolean
- doc: Plot SNP-index with INDEL.
  id: in_del
  inputBinding:
    prefix: --indel
  type: boolean
- doc: Width allocated in chromosome figure. [7.5]
  id: fig_width
  inputBinding:
    prefix: --fig-width
  type: boolean
- doc: Height allocated in chromosome figure. [4.0]
  id: fig_height
  inputBinding:
    prefix: --fig-height
  type: boolean
- doc: White space between figures. (This option only affect vertical direction.)
    [0.6]
  id: white_space
  inputBinding:
    prefix: --white-space
  type: boolean
