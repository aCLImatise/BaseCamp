class: CommandLineTool
id: sampling_utils_sync_files..cwl
inputs:
- id: in_sampling_utils
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sync
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sync
- files.
