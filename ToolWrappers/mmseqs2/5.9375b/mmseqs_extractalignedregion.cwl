class: CommandLineTool
id: mmseqs_extractalignedregion.cwl
inputs:
- id: in_extract_mode
  doc: 2               Query 1, Target 2
  type: boolean?
  inputBinding:
    prefix: --extract-mode
- id: in_no_preload
  doc: false           Do not preload database
  type: boolean?
  inputBinding:
    prefix: --no-preload
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- extractalignedregion
