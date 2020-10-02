class: CommandLineTool
id: sslm2sam.cwl
inputs:
- id: in_ssl_m_directory
  doc: SSLM formatted output directories
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sslm2sam
