class: CommandLineTool
id: planemo_merge_test_reports.cwl
inputs:
- id: in_input_paths
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_path
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
- planemo
- merge_test_reports
