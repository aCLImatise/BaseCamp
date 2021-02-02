class: CommandLineTool
id: RunTHetA.py.cwl
inputs:
- id: in_normal_file
  doc: ''
  type: File
  inputBinding:
    prefix: --NORMAL_FILE
- id: in_tumor_file
  doc: ''
  type: File
  inputBinding:
    prefix: --TUMOR_FILE
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RunTHetA.py
