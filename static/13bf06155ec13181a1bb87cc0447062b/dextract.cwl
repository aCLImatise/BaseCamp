class: CommandLineTool
id: dextract.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_v_faq
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vfaq
- id: in_path
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dextract
