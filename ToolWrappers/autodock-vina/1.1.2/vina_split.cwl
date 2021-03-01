class: CommandLineTool
id: vina_split.cwl
inputs:
- id: in_input
  doc: input to split (PDBQT)
  type: string?
  inputBinding:
    prefix: --input
- id: in_ligand
  doc: prefix for ligands
  type: string?
  inputBinding:
    prefix: --ligand
- id: in_flex
  doc: prefix for side chains
  type: string?
  inputBinding:
    prefix: --flex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vina_split
