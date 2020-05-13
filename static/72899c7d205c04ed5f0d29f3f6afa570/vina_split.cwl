class: CommandLineTool
id: vina_split.cwl
inputs:
- id: input
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
outputs: []
cwlVersion: v1.1
baseCommand:
- vina_split
