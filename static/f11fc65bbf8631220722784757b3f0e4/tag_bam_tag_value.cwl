class: CommandLineTool
id: ../../../tag_bam_tag_value.cwl
inputs:
- id: tag_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tag_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: tag_value
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tag_bam
- tag_value
