class: CommandLineTool
id: partition_graph.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: in_stop_tags
  doc: "Use stoptags in this file during partitioning\n(default: )"
  type: File
  inputBinding:
    prefix: --stoptags
- id: in_subset_size
  doc: "Set subset size (usually 1e5-1e6 is good) (default:\n100000)"
  type: long
  inputBinding:
    prefix: --subset-size
- id: in_no_big_traverse
  doc: "Truncate graph joins at big traversals (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --no-big-traverse
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  inputBinding:
    prefix: --force
- id: in_threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- partition-graph.py
