class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sslm2sam.cwl
inputs:
- id: output
  doc: output SAM-filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: ssl_m_directory
  doc: SSLM formatted output directories
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sslm2sam
