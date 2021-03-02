class: CommandLineTool
id: car_to_files.py.cwl
inputs:
- id: in_input_file_name
  doc: Input file name
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_mol_file
  doc: Output mol2 file name
  type: File?
  inputBinding:
    prefix: -m
- id: in_output_pdb_file
  doc: Output PDB file name
  type: File?
  inputBinding:
    prefix: -p
- id: in_residue_name
  doc: Residue name
  type: string?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_mol_file
  doc: Output mol2 file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_mol_file)
- id: out_output_pdb_file
  doc: Output PDB file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_file)
hints: []
cwlVersion: v1.1
baseCommand:
- car_to_files.py
