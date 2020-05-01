#!/usr/bin/env cwl-runner

baseCommand:
- rbmoegrid
class: CommandLineTool
cwlVersion: v1.0
id: rbmoegrid
inputs:
- doc: 'output file name prefix (.grd is suffixed) (default: moegrid)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: receptor param file(s) (contain active site params, can be specified multiple
    times)
  id: receptor_param
  inputBinding:
    prefix: --receptor-param
  type: string
- doc: 'scoring function param file (default: calcgrid_vdw.prm)'
  id: sf_param
  inputBinding:
    prefix: --sf-param
  type: string
- doc: 'grid step (in angstrom) (default: 0.5)'
  id: grid_step
  inputBinding:
    prefix: --grid-step
  type: string
- doc: 'grid border around docking site (in angstrom) (default: 1.0)'
  id: grid_border
  inputBinding:
    prefix: --grid-border
  type: string
- doc: 'Tripos atom type (default: C.3)'
  id: tripos_atom_type
  inputBinding:
    prefix: --tripos-atom-type
  type: string
