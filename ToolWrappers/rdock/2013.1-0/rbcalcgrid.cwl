class: CommandLineTool
id: rbcalcgrid.cwl
inputs:
- id: in_outputsuffix_suffix_grid
  doc: <OutputSuffix> - suffix for grid (.grd IS required)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_receptorprmfile_receptor_param
  doc: <ReceptorPrmFile> - receptor param file (contains active site params)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_scoring_function_param
  doc: <SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_gridstep_grid_step
  doc: <GridStep> - grid step (default=0.5A)
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_border_grid_border
  doc: <Border> - grid border around docking site (default=1.0A)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_root
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_receptor_prm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sfp_rm_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_grid_step
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbcalcgrid
