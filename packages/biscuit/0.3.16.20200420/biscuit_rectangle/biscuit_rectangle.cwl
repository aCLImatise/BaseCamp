class: CommandLineTool
id: biscuit_rectangle.cwl
inputs:
- id: in_output_file
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- biscuit
- rectangle
