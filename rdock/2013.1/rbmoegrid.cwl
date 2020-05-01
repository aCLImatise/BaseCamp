#!/usr/bin/env cwl-runner

baseCommand:
- rbmoegrid
class: CommandLineTool
cwlVersion: v1.0
id: rbmoegrid
inputs:
- doc: (.grd is suffixed)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: file (contains active site params)
  id: receptor
  inputBinding:
    prefix: '- receptor'
  type: string
- doc: param file (default calcgrid_vdw.prm)
  id: scoring
  inputBinding:
    prefix: '- scoring'
  type: string
- doc: (default=0.5A)
  id: grid
  inputBinding:
    prefix: '- grid'
  type: string
- doc: around docking site (default=1.0A)
  id: grid
  inputBinding:
    prefix: '- grid'
  type: string
- doc: type (default is C.3)
  id: tripos
  inputBinding:
    prefix: '- Tripos'
  type: string
