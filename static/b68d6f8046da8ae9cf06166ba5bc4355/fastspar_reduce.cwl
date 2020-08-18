class: CommandLineTool
id: ../../../fastspar_reduce.cwl
inputs:
- id: r_slash_correlation_table
  doc: Correlation input table
  type: File
  inputBinding:
    prefix: -r/--correlation_table
- id: p_slash_p_value_table
  doc: Number of bootstrap samples to generate
  type: File
  inputBinding:
    prefix: -p/--pvalue_table
- id: oslash_output_prefix
  doc: Output prefix
  type: File
  inputBinding:
    prefix: -o/--output_prefix
- id: t_slash_correlation
  doc: 'Absolute (sign is ignored) correlation threshold (default: 0.1)'
  type: double
  inputBinding:
    prefix: -t/--correlation
- id: lslash_p_value
  doc: 'P-value threshold (default: 0.05)'
  type: double
  inputBinding:
    prefix: -l/--pvalue
- id: _version_display
  doc: --version Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: correlation_table
  doc: ''
  type: File
  inputBinding:
    prefix: --correlation_table
- id: p_value_table
  doc: ''
  type: File
  inputBinding:
    prefix: --pvalue_table
- id: correlation
  doc: ''
  type: File
  inputBinding:
    prefix: --correlation
- id: p_value
  doc: ''
  type: double
  inputBinding:
    prefix: --pvalue
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --output_prefix
- id: reduce
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastspar_reduce
