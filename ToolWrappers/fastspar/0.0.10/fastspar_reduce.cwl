class: CommandLineTool
id: fastspar_reduce.cwl
inputs:
- id: in_correlation_table
  doc: Correlation input table
  type: File?
  inputBinding:
    prefix: --correlation_table
- id: in_p_value_table
  doc: Number of bootstrap samples to generate
  type: File?
  inputBinding:
    prefix: --pvalue_table
- id: in_output_prefix
  doc: Output prefix
  type: File?
  inputBinding:
    prefix: --output_prefix
- id: in_correlation
  doc: 'Absolute (sign is ignored) correlation threshold (default: 0.1)'
  type: double?
  inputBinding:
    prefix: --correlation
- id: in_p_value
  doc: 'P-value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --pvalue
- id: in_reduce
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastspar_reduce
