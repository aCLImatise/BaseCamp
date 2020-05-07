class: CommandLineTool
id: bam_add_tags.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    prefix: --inbam
- id: out_bam
  doc: ''
  type: string
  inputBinding:
    prefix: --outbam
- id: tx
  doc: ''
  type: boolean
  inputBinding:
    prefix: --tx
- id: tx2gx
  doc: ''
  type: string
  inputBinding:
    prefix: --tx2gx
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_add_tags
