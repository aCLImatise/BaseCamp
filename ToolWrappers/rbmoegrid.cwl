class: CommandLineTool
id: rbmoegrid.cwl
inputs:
- id: in_grd_is_suffixed
  doc: (.grd is suffixed)
  type: File
  inputBinding:
    prefix: -o
- id: in_receptor_param_file
  doc: '- receptor param file (contains active site params)'
  type: File
  inputBinding:
    prefix: -r
- id: in_scoring_function_param
  doc: '- scoring function param file (default calcgrid_vdw.prm)'
  type: File
  inputBinding:
    prefix: -p
- id: in_grid_step_defaulta
  doc: '- grid step (default=0.5A)'
  type: double
  inputBinding:
    prefix: -g
- id: in_grid_border_docking
  doc: '- grid border around docking site (default=1.0A)'
  type: double
  inputBinding:
    prefix: -b
- id: in_tripos_atom_type
  doc: '- Tripos atom type (default is C.3)'
  type: double
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_grd_is_suffixed
  doc: (.grd is suffixed)
  type: File
  outputBinding:
    glob: $(inputs.in_grd_is_suffixed)
cwlVersion: v1.1
baseCommand:
- rbmoegrid
