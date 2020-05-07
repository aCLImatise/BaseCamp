class: CommandLineTool
id: mmseqs_resultsbyset.cwl
inputs:
- id: alpha
  doc: '0.001           Set alpha for combining p-values during aggregation         '
  type: boolean
  inputBinding:
    prefix: --alpha
- id: short_output
  doc: 'false           The output database will contain only the spread p-value    '
  type: boolean
  inputBinding:
    prefix: --short-output
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- resultsbyset
