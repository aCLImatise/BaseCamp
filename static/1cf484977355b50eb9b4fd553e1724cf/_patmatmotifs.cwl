class: CommandLineTool
id: _patmatmotifs.cwl
inputs:
- id: in_full
  doc: boolean    [N] Provide full documentation for matching
  type: boolean?
  inputBinding:
    prefix: -full
- id: in_patterns
  doc: -[no]prune          boolean    [Y] Ignore simple patterns. If this is true
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
- _patmatmotifs
