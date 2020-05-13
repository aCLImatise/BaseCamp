class: CommandLineTool
id: partition_graph.py.cwl
inputs:
- id: basename
  doc: basename of the input k-mer nodegraph + tagset files
  type: string
  inputBinding:
    position: 0
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: stop_tags
  doc: 'Use stoptags in this file during partitioning (default: )'
  type: File
  inputBinding:
    prefix: --stoptags
- id: subset_size
  doc: 'Set subset size (usually 1e5-1e6 is good) (default: 100000)'
  type: string
  inputBinding:
    prefix: --subset-size
- id: no_big_traverse
  doc: 'Truncate graph joins at big traversals (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-big-traverse
- id: force
  doc: 'Overwrite output file if it exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- partition-graph.py
