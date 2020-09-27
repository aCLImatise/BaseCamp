class: CommandLineTool
id: ct_energy.cwl
inputs:
- id: in_no_dangle
  doc: "--simple\n--Vienna\n--coaxial"
  type: boolean
  inputBinding:
    prefix: --nodangle
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ct-energy
