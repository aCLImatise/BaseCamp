class: CommandLineTool
id: planemo_merge_test_reports_OPTIONS_INPUT_PATHS.cwl
inputs:
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- merge_test_reports
- OPTIONS
- INPUT_PATHS
