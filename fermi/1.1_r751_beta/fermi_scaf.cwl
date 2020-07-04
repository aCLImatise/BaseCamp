class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_scaf.cwl
inputs:
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: minimum_number_supporting
  doc: minimum number of supporting reads [5]
  type: long
  inputBinding:
    prefix: -m
- id: print_links_unitigs
  doc: print the links between unitigs
  type: boolean
  inputBinding:
    prefix: -P
- id: in_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_remapped_dot_mag
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- scaf
