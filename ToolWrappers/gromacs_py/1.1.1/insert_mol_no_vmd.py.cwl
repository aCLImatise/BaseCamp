class: CommandLineTool
id: insert_mol_no_vmd.py.cwl
inputs:
- id: in_f_sys
  doc: Input PDB file of the system
  type: File?
  inputBinding:
    prefix: -fsys
- id: in_p_sys
  doc: Topologie in gromacs format .top of the system
  type: string?
  inputBinding:
    prefix: -psys
- id: in_fmol
  doc: Input PDB file of the molecule to insert
  type: File?
  inputBinding:
    prefix: -fmol
- id: in_pmol
  doc: Topologie in gromacs format .top of the molecule to insert
  type: string?
  inputBinding:
    prefix: -pmol
- id: in_nmol
  doc: Number of molecule to insert
  type: long?
  inputBinding:
    prefix: -nmol
- id: in_output_directory
  doc: Output Directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_file_name
  doc: Output file name
  type: File?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output Directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file_name
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- insert_mol_no_vmd.py
