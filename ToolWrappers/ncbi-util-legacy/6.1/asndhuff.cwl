class: CommandLineTool
id: asndhuff.cwl
inputs:
- id: in_input_file
  doc: Input file [File In]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_file_optional
  doc: Output file [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_optional
  doc: Output file [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_optional)
hints: []
cwlVersion: v1.1
baseCommand:
- asndhuff
