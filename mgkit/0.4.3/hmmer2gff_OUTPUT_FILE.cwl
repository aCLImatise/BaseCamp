class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hmmer2gff_OUTPUT_FILE.cwl
inputs:
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: db
  doc: ''
  type: string
  inputBinding:
    prefix: -db
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmer2gff
- OUTPUT_FILE
