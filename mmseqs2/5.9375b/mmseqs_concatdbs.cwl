class: CommandLineTool
id: mmseqs_concatdbs.cwl
inputs:
- id: preserve_keys
  doc: false           the keys of the two DB should be distinct, and they will be
    preserved in the concatenation.
  type: boolean
  inputBinding:
    prefix: --preserve-keys
- id: threads
  doc: 1               number of cores used for the computation (uses all cores by
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
- concatdbs
