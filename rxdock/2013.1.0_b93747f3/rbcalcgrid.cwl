#!/usr/bin/env cwl-runner

baseCommand:
- rbcalcgrid
class: CommandLineTool
cwlVersion: v1.0
id: rbcalcgrid
inputs:
- doc: ''
  id: output_root
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: receptor_prm_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: sfp_rm_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: grid_step
  inputBinding:
    position: 3
  type: string
- doc: <OutputSuffix> - suffix for grid (.grd IS required)
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <ReceptorPrmFile> - receptor param file (contains active site params)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: <SFPrmFile> - scoring function param file (either calcgrid_vdw1.prm or calcgrid_vdw5.prm)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: <GridStep> - grid step (default=0.5A)
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: <Border> - grid border around docking site (default=1.0A)
  id: b
  inputBinding:
    prefix: -b
  type: boolean
