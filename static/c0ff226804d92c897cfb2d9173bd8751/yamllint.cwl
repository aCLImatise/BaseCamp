class: CommandLineTool
id: yamllint.cwl
inputs:
- id: file_or_dir
  doc: files to check
  type: File
  inputBinding:
    position: 0
- id: config_file
  doc: path to a custom configuration
  type: string
  inputBinding:
    prefix: --config-file
- id: config_data
  doc: custom configuration (as YAML source)
  type: string
  inputBinding:
    prefix: --config-data
- id: format
  doc: format for parsing output
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- yamllint
