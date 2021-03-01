class: CommandLineTool
id: yamllint.cwl
inputs:
- id: in_config_file
  doc: path to a custom configuration
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_config_data
  doc: custom configuration (as YAML source)
  type: string?
  inputBinding:
    prefix: --config-data
- id: in_format
  doc: format for parsing output
  type: string?
  inputBinding:
    prefix: --format
- id: in_file_or_dir
  doc: files to check
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- yamllint
