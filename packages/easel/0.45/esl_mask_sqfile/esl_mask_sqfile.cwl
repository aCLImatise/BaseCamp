class: CommandLineTool
id: esl_mask_sqfile.cwl
inputs:
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- esl-mask
- sqfile
