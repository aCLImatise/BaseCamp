class: CommandLineTool
id: tag_bam_output.cwl
inputs:
- id: in_tag_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tag_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tag_value
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tag_bam
- output
