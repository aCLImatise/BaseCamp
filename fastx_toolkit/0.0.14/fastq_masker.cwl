class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_masker.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: z
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_masker
