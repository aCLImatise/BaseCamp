class: CommandLineTool
id: fermi_clean.cwl
inputs:
- id: in_read_maximum_neighbors
  doc: read maximum INT neighbors per node [512]
  type: long
  inputBinding:
    prefix: -N
- id: in_drop_neighbor_overlap
  doc: drop a neighbor if relative overlap ratio below FLOAT [0.70]
  type: double
  inputBinding:
    prefix: -d
- id: in_clean_the_graph
  doc: clean the graph
  type: boolean
  inputBinding:
    prefix: -C
- id: in_minimum_tip_length
  doc: minimum tip length [300]
  type: long
  inputBinding:
    prefix: -l
- id: in_minimum_tip_read
  doc: minimum tip read count [0]
  type: long
  inputBinding:
    prefix: -e
- id: in_minimum_internal_unitig
  doc: minimum internal unitig read count [3]
  type: long
  inputBinding:
    prefix: -i
- id: in_minimum_overlap
  doc: minimum overlap [60]
  type: long
  inputBinding:
    prefix: -o
- id: in_minimum_relative_overlap
  doc: minimum relative overlap ratio [0.80]
  type: double
  inputBinding:
    prefix: -R
- id: in_number_of_iterations
  doc: number of iterations [3]
  type: long
  inputBinding:
    prefix: -n
- id: in_aggressive_bubble_popping
  doc: aggressive bubble popping
  type: boolean
  inputBinding:
    prefix: -A
- id: in_skip_bubble_simplification
  doc: skip bubble simplification
  type: boolean
  inputBinding:
    prefix: -S
- id: in_minimum_coverage_keep
  doc: minimum coverage to keep a bubble [10.00]
  type: double
  inputBinding:
    prefix: -w
- id: in_minimum_fraction_keep
  doc: minimum fraction to keep a bubble [0.15]
  type: double
  inputBinding:
    prefix: -r
- id: in_in_dot_mog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fermi
- clean
