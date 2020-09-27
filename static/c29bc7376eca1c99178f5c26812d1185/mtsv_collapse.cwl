class: CommandLineTool
id: mtsv_collapse.cwl
inputs:
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_output
  doc: Path to write combined outupt file to.
  type: File
  inputBinding:
    prefix: --output
- id: in_flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-collapse
