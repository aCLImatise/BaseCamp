class: CommandLineTool
id: molsurf.cwl
inputs:
- id: in_pqr_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_probe_radius
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
- molsurf
