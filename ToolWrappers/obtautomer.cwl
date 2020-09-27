class: CommandLineTool
id: obtautomer.cwl
inputs:
- id: in_canonical_tautomer_only
  doc: ': Canonical tautomer only'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obtautomer
