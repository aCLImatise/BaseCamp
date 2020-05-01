#!/usr/bin/env cwl-runner

baseCommand:
- obthermo
class: CommandLineTool
cwlVersion: v1.0
id: obthermo
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
- doc: override symmetry number used in input file
  id: symm
  inputBinding:
    prefix: --symm
  type: string
- doc: number of rotatable bonds for conformational entropy
  id: n_rot
  inputBinding:
    prefix: --nrot
  type: string
- doc: temperature derivative of second virial coefficient for cp calculation
  id: dbd_t
  inputBinding:
    prefix: --dbdt
  type: string
- doc: output kJ/mol related units (default kcal/mol)
  id: kj
  inputBinding:
    prefix: --kj
  type: boolean
