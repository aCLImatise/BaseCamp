class: CommandLineTool
id: gmx_trjconv_str.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_index_path
  doc: 'Path to the GROMACS index file. Accepted formats: ndx.'
  type: File?
  inputBinding:
    prefix: --input_index_path
- id: in_input_structure_path
  doc: 'Path to the input structure file. Accepted formats: xtc, trr, cpt, gro, g96,
    pdb, tng.'
  type: File?
  inputBinding:
    prefix: --input_structure_path
- id: in_input_top_path
  doc: 'Path to the GROMACS input topology file. Accepted formats: tpr, gro, g96,
    pdb, brk, ent.'
  type: File?
  inputBinding:
    prefix: --input_top_path
- id: in_output_str_path
  doc: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"
  type: File?
  inputBinding:
    prefix: --output_str_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_str_path
  doc: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_str_path)
hints: []
cwlVersion: v1.1
baseCommand:
- gmx_trjconv_str
