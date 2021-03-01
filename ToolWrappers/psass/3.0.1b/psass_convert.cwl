class: CommandLineTool
id: psass_convert.cwl
inputs:
- id: in_output_file
  doc: TEXT    Write to an output file instead of stdout
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT    Write to an output file instead of stdout
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- psass
- convert
