class: CommandLineTool
id: transcov_pick_subset.cwl
inputs:
- id: in_output_file
  doc: "--help                  Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --output-file
- id: in_input_sample
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "--help                  Show this message and exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- transcov
- pick-subset
