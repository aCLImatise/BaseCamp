class: CommandLineTool
id: varscan_filter.cwl
inputs:
- id: min_coverage
  doc: Minimum read depth at a position to make a call [10]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_read_s2
  doc: Minimum supporting reads at a position to call variants [2]
  type: boolean
  inputBinding:
    prefix: --min-reads2
- id: min_strands_2
  doc: 'Minimum # of strands on which variant observed (1 or 2) [1]'
  type: boolean
  inputBinding:
    prefix: --min-strands2
- id: min_avg_qual
  doc: Minimum average base quality for variant-supporting reads [20]
  type: boolean
  inputBinding:
    prefix: --min-avg-qual
- id: min_var_freq
  doc: Minimum variant allele frequency threshold [0.20]
  type: boolean
  inputBinding:
    prefix: --min-var-freq
- id: p_value
  doc: Default p-value threshold for calling variants [1e-01]
  type: boolean
  inputBinding:
    prefix: --p-value
- id: in_del_file
  doc: File of indels for filtering nearby SNPs
  type: boolean
  inputBinding:
    prefix: --indel-file
- id: output_file
  doc: File to contain variants passing filters
  type: boolean
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- filter
