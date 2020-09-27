class: CommandLineTool
id: fermi_scaf.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_minimum_number_supporting
  doc: minimum number of supporting reads [5]
  type: long
  inputBinding:
    prefix: -m
- id: in_print_links_unitigs
  doc: print the links between unitigs
  type: boolean
  inputBinding:
    prefix: -P
- id: in_in_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_remapped_dot_mag
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_avg
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_std
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- scaf
