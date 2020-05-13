class: CommandLineTool
id: sslm2sam.cwl
inputs:
- id: ssl_m_directory
  doc: SSLM formatted output directories
  type: string
  inputBinding:
    position: 0
- id: output
  doc: output SAM-filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sslm2sam
