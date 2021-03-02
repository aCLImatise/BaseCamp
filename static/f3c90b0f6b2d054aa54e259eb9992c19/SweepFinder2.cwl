class: CommandLineTool
id: SweepFinder2.cwl
inputs:
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_find
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_get
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_frequency
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_sweeps
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_spectrum
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SweepFinder2
