class: CommandLineTool
id: fastspar_reduce.cwl
inputs:
- id: r
  doc: /--correlation_table <path> Correlation input table
  type: boolean
  inputBinding:
    prefix: -r
- id: p
  doc: /--pvalue_table <path> Number of bootstrap samples to generate
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: /--output_prefix <path> Output prefix
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '/--correlation <float> Absolute (sign is ignored) correlation threshold (default:
    0.1)'
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: '/--pvalue <float> P-value threshold (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -l
- id: v
  doc: --version Display version information and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- fastspar_reduce
