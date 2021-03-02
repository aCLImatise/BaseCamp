class: CommandLineTool
id: rsem_sam_validator.cwl
inputs:
- id: in_input_dots_am_slash_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsem-sam-validator
