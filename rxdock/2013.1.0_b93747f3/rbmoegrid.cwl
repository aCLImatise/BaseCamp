class: CommandLineTool
id: rbmoegrid.cwl
inputs:
- id: output
  doc: 'output file name prefix (.grd is suffixed) (default: moegrid)'
  type: string
  inputBinding:
    prefix: --output
- id: receptor_param
  doc: receptor param file(s) (contain active site params, can be specified multiple
    times)
  type: string
  inputBinding:
    prefix: --receptor-param
- id: sf_param
  doc: 'scoring function param file (default: calcgrid_vdw.prm)'
  type: string
  inputBinding:
    prefix: --sf-param
- id: grid_step
  doc: 'grid step (in angstrom) (default: 0.5)'
  type: string
  inputBinding:
    prefix: --grid-step
- id: grid_border
  doc: 'grid border around docking site (in angstrom) (default: 1.0)'
  type: string
  inputBinding:
    prefix: --grid-border
- id: tripos_atom_type
  doc: 'Tripos atom type (default: C.3)'
  type: string
  inputBinding:
    prefix: --tripos-atom-type
outputs: []
cwlVersion: v1.1
baseCommand:
- rbmoegrid
