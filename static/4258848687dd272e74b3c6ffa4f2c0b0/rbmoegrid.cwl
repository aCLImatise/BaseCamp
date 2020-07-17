class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbmoegrid.cwl
inputs:
- id: grd_is_suffixed
  doc: (.grd is suffixed)
  type: string
  inputBinding:
    prefix: -o
- id: receptor_param_file
  doc: '- receptor param file (contains active site params)'
  type: string
  inputBinding:
    prefix: -r
- id: scoring_default_calcgridvdwprm
  doc: '- scoring function param file (default calcgrid_vdw.prm)'
  type: string
  inputBinding:
    prefix: -p
- id: grid_step_defaulta
  doc: '- grid step (default=0.5A)'
  type: string
  inputBinding:
    prefix: -g
- id: grid_border_docking
  doc: '- grid border around docking site (default=1.0A)'
  type: string
  inputBinding:
    prefix: -b
- id: tripos_atom_type
  doc: '- Tripos atom type (default is C.3)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- rbmoegrid
