class: CommandLineTool
id: planemo_merge_test_reports_FILE_PATH.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_paths
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- merge_test_reports
- FILE_PATH
