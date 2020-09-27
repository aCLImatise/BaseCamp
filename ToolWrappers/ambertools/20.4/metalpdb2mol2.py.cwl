class: CommandLineTool
id: metalpdb2mol2.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File
  inputBinding:
    prefix: -i
- id: in_output_mol_file
  doc: Output mol2 file
  type: File
  inputBinding:
    prefix: -o
- id: in_charge_metal_ion
  doc: Charge of the metal ion
  type: string
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_mol_file
  doc: Output mol2 file
  type: File
  outputBinding:
    glob: $(inputs.in_output_mol_file)
cwlVersion: v1.1
baseCommand:
- metalpdb2mol2.py
