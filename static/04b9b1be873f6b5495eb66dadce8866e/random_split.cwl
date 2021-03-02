class: CommandLineTool
id: random_split.cwl
inputs:
- id: in_probability_that_line_goes_to_output_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_probability_that_line_goes_to_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_probability_that_line_goes_to_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- random_split
