class: CommandLineTool
id: create_top.py.cwl
inputs:
- id: in_input_pdb_file
  doc: Input PDB file
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_v_site
  doc: Use virtual site for hydrogens
  type: boolean?
  inputBinding:
    prefix: -vsite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- create_top.py
