class: CommandLineTool
id: sixgill_build_fastqfiles.cwl
inputs:
- id: in_minlength
  doc: ''
  type: string?
  inputBinding:
    prefix: --minlength
- id: in_six_gill_build
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
- sixgill_build
- fastqfiles
