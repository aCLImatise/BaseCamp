class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/complementBed.cwl
inputs:
- id: limit_output_solely
  doc: Limit output to solely the chromosomes with records in the input file.
  type: boolean
  inputBinding:
    prefix: -L
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: complement
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- complementBed
