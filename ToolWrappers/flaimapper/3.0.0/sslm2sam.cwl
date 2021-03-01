class: CommandLineTool
id: sslm2sam.cwl
inputs:
- id: in_verbose
  doc: "output SAM-filename; '-' for stdout\n"
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_ssl_m_directory
  doc: SSLM formatted output directories
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: "output SAM-filename; '-' for stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- sslm2sam
