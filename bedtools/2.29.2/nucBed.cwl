class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nucBed.cwl
inputs:
- id: fi
  doc: ''
  type: string
  inputBinding:
    prefix: -fi
- id: bed
  doc: ''
  type: string
  inputBinding:
    prefix: -bed
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nuc
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nucBed
