class: CommandLineTool
id: rbmoegrid.cwl
inputs:
- id: in_output
  doc: "output file name prefix (.grd is suffixed)\n(default: moegrid)"
  type: File
  inputBinding:
    prefix: --output
- id: in_receptor_param
  doc: "receptor param file(s) (contain active site\nparams, can be specified multiple\
    \ times)"
  type: File
  inputBinding:
    prefix: --receptor-param
- id: in_sf_param
  doc: "scoring function param file (default:\ncalcgrid_vdw.prm)"
  type: File
  inputBinding:
    prefix: --sf-param
- id: in_grid_step
  doc: 'grid step (in angstrom) (default: 0.5)'
  type: double
  inputBinding:
    prefix: --grid-step
- id: in_grid_border
  doc: "grid border around docking site (in angstrom)\n(default: 1.0)"
  type: double
  inputBinding:
    prefix: --grid-border
- id: in_tripos_atom_type
  doc: 'Tripos atom type (default: C.3)'
  type: double
  inputBinding:
    prefix: --tripos-atom-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file name prefix (.grd is suffixed)\n(default: moegrid)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- rbmoegrid
