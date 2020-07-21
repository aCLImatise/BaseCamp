class: CommandLineTool
id: ../../../sequana_bam_splitter.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filter
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: removes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: unmapped
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: secondary
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_bam_splitter
