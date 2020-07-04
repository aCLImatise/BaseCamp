class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clan_output.cwl
inputs:
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: clan_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: read_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- clan_output
