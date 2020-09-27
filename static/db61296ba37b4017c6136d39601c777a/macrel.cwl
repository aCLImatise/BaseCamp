class: CommandLineTool
id: macrel.cwl
inputs:
- id: in_file_output
  doc: ''
  type: File
  inputBinding:
    prefix: --file-output
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_file_output)
cwlVersion: v1.1
baseCommand:
- macrel
