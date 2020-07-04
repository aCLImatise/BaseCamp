class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gmx_trjconv_trj.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_index_path
  doc: 'Path to the GROMACS index file. Accepted formats: ndx.'
  type: string
  inputBinding:
    prefix: --input_index_path
- id: input_t_raj_path
  doc: 'Path to the GROMACS trajectory file. Accepted formats: xtc, trr, cpt, gro,
    g96, pdb, tng.'
  type: string
  inputBinding:
    prefix: --input_traj_path
- id: output_t_raj_path
  doc: 'Path to the output file. Accepted formats: xtc, trr, gro, g96, pdb, tng.'
  type: string
  inputBinding:
    prefix: --output_traj_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gmx_trjconv_trj
