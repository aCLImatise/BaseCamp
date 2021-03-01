class: CommandLineTool
id: varscan_somaticFilter.cwl
inputs:
- id: in_min_coverage
  doc: Minimum read depth at a position to make a call [10]
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_min_reads_two
  doc: Minimum supporting reads at a position to call variants [4]
  type: boolean?
  inputBinding:
    prefix: --min-reads2
- id: in_min_strands_two
  doc: 'Minimum # of strands on which variant observed (1 or 2) [1]'
  type: boolean?
  inputBinding:
    prefix: --min-strands2
- id: in_min_var_freq
  doc: Minimum variant allele frequency threshold [0.20]
  type: boolean?
  inputBinding:
    prefix: --min-var-freq
- id: in_p_value
  doc: Default p-value threshold for calling variants [5e-02]
  type: boolean?
  inputBinding:
    prefix: --p-value
- id: in_in_del_file
  doc: File of indels for filtering nearby SNPs
  type: boolean?
  inputBinding:
    prefix: --indel-file
- id: in_output_file
  doc: Optional output file for filtered variants
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_variant
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Optional output file for filtered variants
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- somaticFilter
