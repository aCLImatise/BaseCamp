class: CommandLineTool
id: ../../../prepare_ligand4.py.cwl
inputs:
- id: ligandfilename_pdb_pdbq
  doc: ligand_filename (.pdb or .mol2 or .pdbq format)
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- prepare_ligand4.py
