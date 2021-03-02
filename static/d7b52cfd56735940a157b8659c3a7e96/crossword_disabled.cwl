class: CommandLineTool
id: crossword_disabled.cwl
inputs:
- id: in_balsa
  doc: avail
  type: string
  inputBinding:
    position: 0
- id: in_tided
  doc: halve
  type: string
  inputBinding:
    position: 1
- id: in_sneer
  doc: Initial
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- crossword
- disabled
