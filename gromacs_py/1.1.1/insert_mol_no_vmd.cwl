class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/insert_mol_no_vmd.py.cwl
inputs:
- id: f_sys
  doc: Input PDB file of the system
  type: string
  inputBinding:
    prefix: -fsys
- id: p_sys
  doc: Topologie in gromacs format .top of the system
  type: string
  inputBinding:
    prefix: -psys
- id: fmol
  doc: Input PDB file of the molecule to insert
  type: string
  inputBinding:
    prefix: -fmol
- id: pmol
  doc: Topologie in gromacs format .top of the molecule to insert
  type: string
  inputBinding:
    prefix: -pmol
- id: nmol
  doc: Number of molecule to insert
  type: string
  inputBinding:
    prefix: -nmol
- id: output_directory
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -o
- id: output_file_name
  doc: Output file name
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- insert_mol_no_vmd.py
