class: CommandLineTool
id: lefse2circlader.py_INPUT_FILE.cwl
inputs:
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_lefsetwocircladerdotpy
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_label
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lefse2circlader.py
- INPUT_FILE
