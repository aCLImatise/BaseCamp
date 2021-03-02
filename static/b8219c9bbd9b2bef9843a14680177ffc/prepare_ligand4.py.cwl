class: CommandLineTool
id: prepare_ligand4.py.cwl
inputs:
- id: in_ligandfilename_pdb_format
  doc: ligand_filename (.pdb or .mol2 or .pdbq format)
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prepare_ligand4.py
