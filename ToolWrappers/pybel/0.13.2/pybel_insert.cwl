class: CommandLineTool
id: pybel_insert.cwl
inputs:
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
- insert
