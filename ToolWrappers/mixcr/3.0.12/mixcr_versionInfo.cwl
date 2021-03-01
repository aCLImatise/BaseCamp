class: CommandLineTool
id: mixcr_versionInfo.cwl
inputs:
- id: in_verbose
  doc: Verbose warning messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_warnings
  doc: Suppress all warning messages.
  type: boolean?
  inputBinding:
    prefix: --no-warnings
- id: in_scr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_version_info
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mixcr
- versionInfo
