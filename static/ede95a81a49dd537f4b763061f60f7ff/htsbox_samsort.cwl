class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htsbox_samsort.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -S
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: sam_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- samsort
