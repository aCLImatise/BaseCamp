class: CommandLineTool
id: novoutil_biseqstrandfixer.cwl
inputs:
- id: in_input_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- biseqstrandfixer
