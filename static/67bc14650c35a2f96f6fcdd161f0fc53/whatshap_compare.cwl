class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/whatshap_compare.cwl
inputs:
- id: sample
  doc: Name of the sample to process. If not given, use first sample found in VCF.
  type: string
  inputBinding:
    prefix: --sample
- id: names
  doc: Comma-separated list of data set names to be used in the report (in same order
    as VCFs).
  type: string
  inputBinding:
    prefix: --names
- id: tsv_pairwise
  doc: Filename to write comparison results from pair-wise comparison to (tab-separated).
  type: string
  inputBinding:
    prefix: --tsv-pairwise
- id: tsv_multiway
  doc: Filename to write comparison results from multiway comparison to (tab-separated).
  type: string
  inputBinding:
    prefix: --tsv-multiway
- id: only_sn_vs
  doc: Only process SNVs and ignore all other variants.
  type: boolean
  inputBinding:
    prefix: --only-snvs
- id: switch_error_bed
  doc: Write BED file with switch error positions to given filename.
  type: string
  inputBinding:
    prefix: --switch-error-bed
- id: plot_block_sizes
  doc: Write PDF file with a block length histogram to given filename (requires matplotlib).
  type: string
  inputBinding:
    prefix: --plot-blocksizes
- id: plot_sum_of_block_sizes
  doc: Write PDF file with a block length histogram in which the height of each bar
    corresponds to the sum of lengths.
  type: string
  inputBinding:
    prefix: --plot-sum-of-blocksizes
- id: longest_block_tsv
  doc: Write position-wise agreement of longest joint blocks in each chromosome to
    tab-separated file.
  type: string
  inputBinding:
    prefix: --longest-block-tsv
- id: vcf
  doc: At least two phased VCF files to be compared.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- compare
