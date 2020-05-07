class: CommandLineTool
id: samsift_norm_sam.cwl
inputs:
- id: i
  doc: input SAM/BAM file [-]
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: output SAM/BAM file [-]
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: '[TAG [TAG ...]]  ignored tags'
  type: boolean
  inputBinding:
    prefix: -T
- id: h
  doc: skip SAM headers
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- samsift-norm-sam
