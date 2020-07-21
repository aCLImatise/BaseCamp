class: CommandLineTool
id: ../../../htsbox_bcfidx.cwl
inputs:
- id: s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: bam_idx
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
- bcfidx
