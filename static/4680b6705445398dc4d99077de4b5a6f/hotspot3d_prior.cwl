class: CommandLineTool
id: hotspot3d_prior.cwl
inputs:
- id: in_output_dir
  doc: "Output directory\nOPTIONAL"
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_p_value_cut_off
  doc: p_value cutoff(<=), default is 0.05
  type: boolean?
  inputBinding:
    prefix: --p-value-cutoff
- id: in_three_d_distance_cut_off
  doc: 3D distance cutoff (<= Angstroms), default is 20
  type: boolean?
  inputBinding:
    prefix: --3d-distance-cutoff
- id: in_linear_cut_off
  doc: Linear distance cutoff (> peptides), default is 0
  type: boolean?
  inputBinding:
    prefix: --linear-cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output directory\nOPTIONAL"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- hotspot3d
- prior
