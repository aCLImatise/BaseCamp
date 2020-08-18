class: CommandLineTool
id: ../../../planemo_merge_test_reports.cwl
inputs:
- id: input_paths
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- merge_test_reports
