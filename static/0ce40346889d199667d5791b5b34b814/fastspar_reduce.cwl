class: CommandLineTool
id: fastspar_reduce.cwl
inputs:
- id: in_r_slash_correlation_table
  doc: Correlation input table
  type: File
  inputBinding:
    prefix: -r/--correlation_table
- id: in_p_slash_p_value_table
  doc: Number of bootstrap samples to generate
  type: File
  inputBinding:
    prefix: -p/--pvalue_table
- id: in_oslash_output_prefix
  doc: Output prefix
  type: File
  inputBinding:
    prefix: -o/--output_prefix
- id: in_t_slash_correlation
  doc: 'Absolute (sign is ignored) correlation threshold (default: 0.1)'
  type: double
  inputBinding:
    prefix: -t/--correlation
- id: in_lslash_p_value
  doc: 'P-value threshold (default: 0.05)'
  type: double
  inputBinding:
    prefix: -l/--pvalue
- id: in__versiondisplay_version
  doc: "--version\nDisplay version information and exit\n"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_p_value
  doc: ''
  type: double
  inputBinding:
    prefix: --pvalue
- id: in_correlation
  doc: ''
  type: File
  inputBinding:
    prefix: --correlation
- id: in_p_value_table
  doc: ''
  type: File
  inputBinding:
    prefix: --pvalue_table
- id: in_correlation_table
  doc: ''
  type: File
  inputBinding:
    prefix: --correlation_table
- id: in_reduce
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastspar_reduce
