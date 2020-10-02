class: CommandLineTool
id: mmseqs_resultsbyset.cwl
inputs:
- id: in_alpha
  doc: 0.001           Set alpha for combining p-values during aggregation
  type: boolean
  inputBinding:
    prefix: --alpha
- id: in_short_output
  doc: false           The output database will contain only the spread p-value
  type: boolean
  inputBinding:
    prefix: --short-output
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mmseqs
- resultsbyset
