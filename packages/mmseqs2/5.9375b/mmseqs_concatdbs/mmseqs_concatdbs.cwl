class: CommandLineTool
id: mmseqs_concatdbs.cwl
inputs:
- id: in_preserve_keys
  doc: false           the keys of the two DB should be distinct, and they will be
    preserved in the concatenation.
  type: boolean
  inputBinding:
    prefix: --preserve-keys
- id: in_threads
  doc: 1               number of cores used for the computation (uses all cores by
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
- concatdbs
