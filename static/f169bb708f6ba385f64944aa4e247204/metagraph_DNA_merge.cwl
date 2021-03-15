class: CommandLineTool
id: metagraph_DNA_merge.cwl
inputs:
- id: in_bins_per_thread
  doc: '[INT]      number of bins each thread computes on average [1]'
  type: boolean?
  inputBinding:
    prefix: --bins-per-thread
- id: in_dynamic
  doc: dynamic merge by adding traversed paths [off]
  type: boolean?
  inputBinding:
    prefix: --dynamic
- id: in_part_idx
  doc: '[INT]             idx to use when doing external merge []'
  type: boolean?
  inputBinding:
    prefix: --part-idx
- id: in_parts_total
  doc: '[INT]          total number of parts in external merge[]'
  type: boolean?
  inputBinding:
    prefix: --parts-total
- id: in_parallel
  doc: '[INT]             use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_graph_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_graph_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0
cwlVersion: v1.1
baseCommand:
- metagraph_DNA
- merge
