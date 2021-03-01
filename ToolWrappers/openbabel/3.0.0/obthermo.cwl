class: CommandLineTool
id: obthermo.cwl
inputs:
- id: in_symm
  doc: override symmetry number used in input file
  type: long?
  inputBinding:
    prefix: --symm
- id: in_n_rot
  doc: number of rotatable bonds for conformational entropy
  type: long?
  inputBinding:
    prefix: --nrot
- id: in_dbd_t
  doc: temperature derivative of second virial coefficient for cp calculation
  type: string?
  inputBinding:
    prefix: --dbdt
- id: in_kj
  doc: output kJ/mol related units (default kcal/mol)
  type: boolean?
  inputBinding:
    prefix: --kj
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obthermo
