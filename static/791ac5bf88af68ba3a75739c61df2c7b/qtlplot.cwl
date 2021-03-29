class: CommandLineTool
id: qtlplot.cwl
inputs:
- id: in_vcf
  doc: "VCF file which contains parent, bulk1, and bulk2\nin this order. This VCF\
    \ file must have AD field."
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_n_bulk_one
  doc: Number of individuals in bulk 1.
  type: boolean?
  inputBinding:
    prefix: --N-bulk1
- id: in_n_bulk_two
  doc: Number of individuals in bulk 2.
  type: boolean?
  inputBinding:
    prefix: --N-bulk2
- id: in_out
  doc: Output directory. Specified name can exist.
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_filial
  doc: "Filial generation. This parameter must be\nmore than 1. [2]"
  type: boolean?
  inputBinding:
    prefix: --filial
- id: in_threads
  doc: "Number of threads. If you specify the number\nbelow one, then QTL-plot will\
    \ use the threads\nas many as possible. [2]"
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_window
  doc: Window size (kb). [2000]
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_step
  doc: Step size (kb). [100]
  type: boolean?
  inputBinding:
    prefix: --step
- id: in_max_depth
  doc: Maximum depth of variants which will be used. [250]
  type: boolean?
  inputBinding:
    prefix: --max-depth
- id: in_min_depth
  doc: Minimum depth of variants which will be used. [8]
  type: boolean?
  inputBinding:
    prefix: --min-depth
- id: in_n_rep
  doc: "Number of replicates for simulation to make\nnull distribution. [5000]"
  type: boolean?
  inputBinding:
    prefix: --N-rep
- id: in_min_snp_index
  doc: Cutoff of minimum SNP-index for clear results. [0.3]
  type: boolean?
  inputBinding:
    prefix: --min-SNPindex
- id: in_strand_bias
  doc: "Filter spurious homo genotypes in cultivar using\nstrand bias. If ADF (or\
    \ ADR) is higher than this\ncutoff when ADR (or ADF) is 0, that SNP will be\n\
    filtered out. If you want to supress this filtering,\nplease set this cutoff to\
    \ 0. [7]"
  type: boolean?
  inputBinding:
    prefix: --strand-bias
- id: in_snp_eff
  doc: "Predict causal variant using SnpEff. Please\ncheck available databases in\
    \ SnpEff."
  type: boolean?
  inputBinding:
    prefix: --snpEff
- id: in_igv
  doc: Output IGV format file to check results on IGV.
  type: File?
  inputBinding:
    prefix: --igv
- id: in_species
  doc: "Consider multiple test correction derived by\nHuang et al. (2019). Please\
    \ spesify a species name.\nWith this option. QTL-seq produces a theoretical threshold.\n\
    Currently, Arabidopsis, Cucumber, Maize, Rapeseed,\nRice, Tobacco, Tomato, Wheat,\
    \ and Yeast are supported."
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_in_del
  doc: Plot SNP-index with INDEL.
  type: boolean?
  inputBinding:
    prefix: --indel
- id: in_fig_width
  doc: Width allocated in chromosome figure. [7.5]
  type: boolean?
  inputBinding:
    prefix: --fig-width
- id: in_fig_height
  doc: Height allocated in chromosome figure. [4.0]
  type: boolean?
  inputBinding:
    prefix: --fig-height
- id: in_white_space
  doc: "White space between figures. (This option\nonly affect vertical direction.)\
    \ [0.6]"
  type: boolean?
  inputBinding:
    prefix: --white-space
- id: in_format
  doc: "Specifiy the format of an output image.\neps/jpeg/jpg/pdf/pgf/png/rgba/svg/svgz/tif/tiff"
  type: boolean?
  inputBinding:
    prefix: --format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory. Specified name can exist.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_igv
  doc: Output IGV format file to check results on IGV.
  type: File?
  outputBinding:
    glob: $(inputs.in_igv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/qtlseq:2.2.0--py_0
cwlVersion: v1.1
baseCommand:
- qtlplot
