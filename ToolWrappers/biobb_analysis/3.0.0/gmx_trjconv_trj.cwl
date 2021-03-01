class: CommandLineTool
id: gmx_trjconv_trj.cwl
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
- id: in_input_t_raj_path
  doc: 'Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro,
    g96, pdb, tng.'
  type: File?
  inputBinding:
    prefix: --input_traj_path
- id: in_output_t_raj_path
  doc: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"
  type: File?
  inputBinding:
    prefix: --output_traj_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_t_raj_path
  doc: "Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_t_raj_path)
hints: []
cwlVersion: v1.1
baseCommand:
- gmx_trjconv_trj
