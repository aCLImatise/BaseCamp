class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obthermo.cwl
inputs:
- id: symm
  doc: override symmetry number used in input file
  type: string
  inputBinding:
    prefix: --symm
- id: n_rot
  doc: number of rotatable bonds for conformational entropy
  type: string
  inputBinding:
    prefix: --nrot
- id: dbd_t
  doc: temperature derivative of second virial coefficient for cp calculation
  type: string
  inputBinding:
    prefix: --dbdt
- id: kj
  doc: output kJ/mol related units (default kcal/mol)
  type: boolean
  inputBinding:
    prefix: --kj
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- obthermo
