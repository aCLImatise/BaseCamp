class: CommandLineTool
id: mutplot.cwl
inputs:
- id: v
  doc: ', --vcf            VCF file which contains cultivar and mutant bulk. in this
    order. This VCF file must have AD field.'
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ', --out            Output directory. Specified name can exist.'
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: ', --N-bulk         Number of individuals in mutant bulk.'
  type: boolean
  inputBinding:
    prefix: -n
- id: w
  doc: ', --window         Window size (kb). [2000]'
  type: boolean
  inputBinding:
    prefix: -w
- id: s
  doc: ', --step           Step size (kb). [100]'
  type: boolean
  inputBinding:
    prefix: -s
- id: d
  doc: ', --max-depth      Maximum depth of variants which will be used. This cutoff
    will be applied in both of cultivar and bulk. [250]'
  type: boolean
  inputBinding:
    prefix: -D
- id: d
  doc: ', --min-depth      Minimum depth of variants which will be used. This cutoff
    will be applied in both of cultivar and bulk. [8]'
  type: boolean
  inputBinding:
    prefix: -d
- id: n
  doc: ', --N-rep          Number of replicates for simulation to make  null distribution.
    [5000]'
  type: boolean
  inputBinding:
    prefix: -N
- id: m
  doc: ', --min-SNPindex   Cutoff of minimum SNP-index for clear results. [0.3]'
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: ', --strand-bias    Filter spurious homo genotypes in cultivar using strand
    bias. If ADF (or ADR) is higher than this cutoff when ADR (or ADF) is 0, that
    SNP will be filtered out. If you want to supress this filtering, please set this
    cutoff to 0. [7]'
  type: boolean
  inputBinding:
    prefix: -S
- id: e
  doc: ', --snpEff         Predict causal variant using SnpEff. Please check available
    databases in SnpEff.'
  type: boolean
  inputBinding:
    prefix: -e
- id: igv
  doc: Output IGV format file to check results on IGV.
  type: boolean
  inputBinding:
    prefix: --igv
- id: species
  doc: Consider multiple test correction derived by Huang et al. (2019). Please spesify
    a species name. With this option. QTL-seq produces a theoretical threshold. Currently,
    Arabidopsis, Cucumber, Maize, Rapeseed, Rice, Tobacco, Tomato, Wheat, and Yeast
    are supported.
  type: boolean
  inputBinding:
    prefix: --species
- id: in_del
  doc: Plot SNP-index with INDEL.
  type: boolean
  inputBinding:
    prefix: --indel
- id: fig_width
  doc: Width allocated in chromosome figure. [7.5]
  type: boolean
  inputBinding:
    prefix: --fig-width
- id: fig_height
  doc: Height allocated in chromosome figure. [4.0]
  type: boolean
  inputBinding:
    prefix: --fig-height
- id: white_space
  doc: White space between figures. (This option only affect vertical direction.)
    [0.6]
  type: boolean
  inputBinding:
    prefix: --white-space
outputs: []
cwlVersion: v1.1
baseCommand:
- mutplot
