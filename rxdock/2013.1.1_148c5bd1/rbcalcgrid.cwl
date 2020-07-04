class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbcalcgrid.cwl
inputs:
- id: outputsuffix_suffix_grid
  doc: <OutputSuffix> - suffix for grid (.grd IS required)
  type: boolean
  inputBinding:
    prefix: -o
- id: receptor_param_file
  doc: <ReceptorPrmFile> - receptor param file (contains active site params)
  type: boolean
  inputBinding:
    prefix: -r
- id: sfprmfile_scoring_param
  doc: <SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)
  type: boolean
  inputBinding:
    prefix: -p
- id: gridstep_grid_step
  doc: <GridStep> - grid step (default=0.5A)
  type: boolean
  inputBinding:
    prefix: -g
- id: border_grid_border
  doc: <Border> - grid border around docking site (default=1.0A)
  type: boolean
  inputBinding:
    prefix: -b
- id: output_root
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: receptor_prm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sfp_rm_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: grid_step
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rbcalcgrid
