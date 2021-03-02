class: CommandLineTool
id: pybel_summarize.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- pybel
- summarize
