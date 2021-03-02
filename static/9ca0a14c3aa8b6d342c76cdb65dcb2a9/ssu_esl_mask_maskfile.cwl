class: CommandLineTool
id: ssu_esl_mask_maskfile.cwl
inputs:
- id: in_ssu_esl_mask
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_mask_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-esl-mask
- maskfile
