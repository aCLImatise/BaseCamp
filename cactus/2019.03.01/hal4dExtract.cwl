class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hal4dExtract.cwl
inputs:
- id: hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hal4dExtract
