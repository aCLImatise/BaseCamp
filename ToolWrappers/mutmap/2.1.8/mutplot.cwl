class: CommandLineTool
id: mutplot.cwl
inputs:
- id: in__vcf_vcf
  doc: ", --vcf            VCF file which contains cultivar and mutant bulk.\nin this\
    \ order. This VCF file must have AD field."
  type: boolean
  inputBinding:
    prefix: -v
- id: in__output_directory
  doc: ', --out            Output directory. Specified name can exist.'
  type: Directory
  inputBinding:
    prefix: -o
- id: in__nbulk_number
  doc: ', --N-bulk         Number of individuals in mutant bulk.'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__window_kb
  doc: ', --window         Window size (kb). [2000]'
  type: boolean
  inputBinding:
    prefix: -w
- id: in__step_kb
  doc: ', --step           Step size (kb). [100]'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__maxdepth_maximum
  doc: ", --max-depth      Maximum depth of variants which will be used.\nThis cutoff\
    \ will be applied in both of cultivar\nand bulk. [250]"
  type: boolean
  inputBinding:
    prefix: -D
- id: in__mindepth_depth
  doc: ", --min-depth      Minimum depth of variants which will be used.\nThis cutoff\
    \ will be applied in both of cultivar\nand bulk. [8]"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__nrep_number
  doc: ", --N-rep          Number of replicates for simulation to make\nnull distribution.\
    \ [5000]"
  type: boolean
  inputBinding:
    prefix: -N
- id: in__minsnpindex_cutoff
  doc: ', --min-SNPindex   Cutoff of minimum SNP-index for clear results. [0.3]'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__strandbias_filter
  doc: ", --strand-bias    Filter spurious homo genotypes in cultivar using\nstrand\
    \ bias. If ADF (or ADR) is higher than this\ncutoff when ADR (or ADF) is 0, that\
    \ SNP will be\nfiltered out. If you want to supress this filtering,\nplease set\
    \ this cutoff to 0. [7]"
  type: boolean
  inputBinding:
    prefix: -S
- id: in__snpeff_predict
  doc: ", --snpEff         Predict causal variant using SnpEff. Please\ncheck available\
    \ databases in SnpEff."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_igv
  doc: Output IGV format file to check results on IGV.
  type: File
  inputBinding:
    prefix: --igv
- id: in_species
  doc: "Consider multiple test correction derived by\nHuang et al. (2019). Please\
    \ spesify a species name.\nWith this option. QTL-seq produces a theoretical threshold.\n\
    Currently, Arabidopsis, Cucumber, Maize, Rapeseed,\nRice, Tobacco, Tomato, Wheat,\
    \ and Yeast are supported."
  type: boolean
  inputBinding:
    prefix: --species
- id: in_in_del
  doc: Plot SNP-index with INDEL.
  type: boolean
  inputBinding:
    prefix: --indel
- id: in_fig_width
  doc: Width allocated in chromosome figure. [7.5]
  type: boolean
  inputBinding:
    prefix: --fig-width
- id: in_fig_height
  doc: Height allocated in chromosome figure. [4.0]
  type: boolean
  inputBinding:
    prefix: --fig-height
- id: in_white_space
  doc: "White space between figures. (This option\nonly affect vertical direction.)\
    \ [0.6]"
  type: boolean
  inputBinding:
    prefix: --white-space
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_directory
  doc: ', --out            Output directory. Specified name can exist.'
  type: Directory
  outputBinding:
    glob: $(inputs.in__output_directory)
- id: out_igv
  doc: Output IGV format file to check results on IGV.
  type: File
  outputBinding:
    glob: $(inputs.in_igv)
cwlVersion: v1.1
baseCommand:
- mutplot
