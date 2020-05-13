class: CommandLineTool
id: tag_bam_input.cwl
inputs:
- id: input
  doc: Input bam file.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output output file.
  type: string
  inputBinding:
    position: 1
- id: tag_name
  doc: Tag name.
  type: string
  inputBinding:
    position: 2
- id: tag_value
  doc: Tag value.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tag_bam
- input
