class: CommandLineTool
id: gmx_rgyr.cwl
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
  doc: 'Path to the input structure file. Accepted formats: tpr, gro, g96, pdb, brk,
    ent.'
  type: File?
  inputBinding:
    prefix: --input_structure_path
- id: in_input_t_raj_path
  doc: 'Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro,
    g96, pdb, tng.'
  type: File?
  inputBinding:
    prefix: --input_traj_path
- id: in_output_x_vg_path
  doc: "Path to the XVG output file. Accepted formats: xvg.\n"
  type: File?
  inputBinding:
    prefix: --output_xvg_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_x_vg_path
  doc: "Path to the XVG output file. Accepted formats: xvg.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_x_vg_path)
hints: []
cwlVersion: v1.1
baseCommand:
- gmx_rgyr
