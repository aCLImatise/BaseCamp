class: CommandLineTool
id: fermi_scaf.cwl
inputs:
- id: in_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remapped_mag
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: avg
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: std
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: m
  doc: minimum number of supporting reads [5]
  type: long
  inputBinding:
    prefix: -m
- id: p
  doc: print the links between unitigs
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- scaf
