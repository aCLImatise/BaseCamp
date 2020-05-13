class: CommandLineTool
id: varscan_somaticFilter.cwl
inputs:
- id: min_coverage
  doc: Minimum read depth at a position to make a call [10]
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_read_s2
  doc: Minimum supporting reads at a position to call variants [4]
  type: boolean
  inputBinding:
    prefix: --min-reads2
- id: min_strands_2
  doc: 'Minimum # of strands on which variant observed (1 or 2) [1]'
  type: boolean
  inputBinding:
    prefix: --min-strands2
- id: min_var_freq
  doc: Minimum variant allele frequency threshold [0.20]
  type: boolean
  inputBinding:
    prefix: --min-var-freq
- id: p_value
  doc: Default p-value threshold for calling variants [5e-02]
  type: boolean
  inputBinding:
    prefix: --p-value
- id: in_del_file
  doc: File of indels for filtering nearby SNPs
  type: boolean
  inputBinding:
    prefix: --indel-file
- id: output_file
  doc: Optional output file for filtered variants
  type: boolean
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- somaticFilter
