class: CommandLineTool
id: toMultiFastA.cwl
inputs:
- id: in_input_interval_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_base_name
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
- toMultiFastA
