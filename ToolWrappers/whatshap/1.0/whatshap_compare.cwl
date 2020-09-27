class: CommandLineTool
id: whatshap_compare.cwl
inputs:
- id: in_sample
  doc: "Name of the sample to process. If not given, use first\nsample found in VCF."
  type: string
  inputBinding:
    prefix: --sample
- id: in_names
  doc: "Comma-separated list of data set names to be used in\nthe report (in same\
    \ order as VCFs)."
  type: string
  inputBinding:
    prefix: --names
- id: in_tsv_pairwise
  doc: "Filename to write comparison results from pair-wise\ncomparison to (tab-separated)."
  type: File
  inputBinding:
    prefix: --tsv-pairwise
- id: in_tsv_multiway
  doc: "Filename to write comparison results from multiway\ncomparison to (tab-separated).\
    \ Only for diploid vcfs."
  type: File
  inputBinding:
    prefix: --tsv-multiway
- id: in_only_sn_vs
  doc: Only process SNVs and ignore all other variants.
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: in_switch_error_bed
  doc: "Write BED file with switch error positions to given\nfilename. Only for diploid\
    \ vcfs."
  type: File
  inputBinding:
    prefix: --switch-error-bed
- id: in_plot_block_sizes
  doc: "Write PDF file with a block length histogram to given\nfilename (requires\
    \ matplotlib)."
  type: long
  inputBinding:
    prefix: --plot-blocksizes
- id: in_plot_sum_of_block_sizes
  doc: "Write PDF file with a block length histogram in which\nthe height of each\
    \ bar corresponds to the sum of\nlengths."
  type: long
  inputBinding:
    prefix: --plot-sum-of-blocksizes
- id: in_longest_block_tsv
  doc: "Write position-wise agreement of longest joint blocks\nin each chromosome\
    \ to tab-separated file. Only for\ndiploid vcfs."
  type: File
  inputBinding:
    prefix: --longest-block-tsv
- id: in_ploidy
  doc: "The ploidy of the sample(s) (default: 2).\n"
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_vcf
  doc: At least two phased VCF files to be compared.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- whatshap
- compare
