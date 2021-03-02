class: CommandLineTool
id: UnitCell.cwl
inputs:
- id: in_structure_reassemble_pdb
  doc: ': the structure to reassemble (PDB format)'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_structure_pdb
  doc: ': the output structure (PDB format)'
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- UnitCell
