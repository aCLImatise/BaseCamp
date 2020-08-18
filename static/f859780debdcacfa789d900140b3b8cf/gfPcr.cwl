class: CommandLineTool
id: ../../../gfPcr.cwl
inputs:
- id: name
  doc: '- Name to use in bed output.'
  type: string
  inputBinding:
    prefix: -name
- id: host
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: port
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: f_primer
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: r_primer
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- gfPcr
