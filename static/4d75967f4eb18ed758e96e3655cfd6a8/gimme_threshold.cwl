class: CommandLineTool
id: gimme_threshold.cwl
inputs:
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: threshold
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pfm_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: f_a_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fpr
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- threshold
