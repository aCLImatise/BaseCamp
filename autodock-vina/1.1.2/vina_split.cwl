class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vina_split.cwl
inputs:
- id: input_split_pdbqt
  doc: input to split (PDBQT)
  type: string
  inputBinding:
    prefix: --input
- id: ligand
  doc: prefix for ligands
  type: string
  inputBinding:
    prefix: --ligand
- id: flex
  doc: prefix for side chains
  type: string
  inputBinding:
    prefix: --flex
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vina_split
