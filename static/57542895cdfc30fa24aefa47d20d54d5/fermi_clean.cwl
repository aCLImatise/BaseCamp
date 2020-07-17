class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_clean.cwl
inputs:
- id: read_maximum_neighbors
  doc: read maximum INT neighbors per node [512]
  type: long
  inputBinding:
    prefix: -N
- id: drop_neighbor_ratio
  doc: drop a neighbor if relative overlap ratio below FLOAT [0.70]
  type: double
  inputBinding:
    prefix: -d
- id: clean_the_graph
  doc: clean the graph
  type: boolean
  inputBinding:
    prefix: -C
- id: minimum_tip_length
  doc: minimum tip length [300]
  type: long
  inputBinding:
    prefix: -l
- id: minimum_tip_read
  doc: minimum tip read count [0]
  type: long
  inputBinding:
    prefix: -e
- id: minimum_internal_unitig
  doc: minimum internal unitig read count [3]
  type: long
  inputBinding:
    prefix: -i
- id: minimum_overlap
  doc: minimum overlap [60]
  type: long
  inputBinding:
    prefix: -o
- id: minimum_relative_overlap
  doc: minimum relative overlap ratio [0.80]
  type: double
  inputBinding:
    prefix: -R
- id: number_of_iterations
  doc: number of iterations [3]
  type: long
  inputBinding:
    prefix: -n
- id: aggressive_bubble_popping
  doc: aggressive bubble popping
  type: boolean
  inputBinding:
    prefix: -A
- id: skip_bubble_simplification
  doc: skip bubble simplification
  type: boolean
  inputBinding:
    prefix: -S
- id: minimum_coverage_keep
  doc: minimum coverage to keep a bubble [10.00]
  type: double
  inputBinding:
    prefix: -w
- id: minimum_fraction_keep
  doc: minimum fraction to keep a bubble [0.15]
  type: double
  inputBinding:
    prefix: -r
- id: in_dot_mog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- clean
