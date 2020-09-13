class: CommandLineTool
id: ../../../sslm2sam.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_output
  doc: "output SAM-filename; '-' for stdout\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_ssl_m_directory
  doc: SSLM formatted output directories
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output SAM-filename; '-' for stdout\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- sslm2sam
