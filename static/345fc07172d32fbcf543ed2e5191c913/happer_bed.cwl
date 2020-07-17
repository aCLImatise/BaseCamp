class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/happer_bed.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: hap_per
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- happer
- bed
