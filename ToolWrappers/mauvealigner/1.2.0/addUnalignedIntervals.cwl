class: CommandLineTool
id: addUnalignedIntervals.cwl
inputs:
- id: in_input_interval_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_interval_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_interval_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_interval_file)
hints: []
cwlVersion: v1.1
baseCommand:
- addUnalignedIntervals
