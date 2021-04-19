class: CommandLineTool
id: metagraph_stats.cwl
inputs:
- id: in_print
  doc: print graph table to the screen [off]
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_print_internal
  doc: print internal graph representation to screen [off]
  type: boolean?
  inputBinding:
    prefix: --print-internal
- id: in_count_dummy
  doc: show number of dummy source and sink edges [off]
  type: boolean?
  inputBinding:
    prefix: --count-dummy
- id: in_print_col_names
  doc: print names of the columns in annotation to screen [off]
  type: boolean?
  inputBinding:
    prefix: --print-col-names
- id: in_parallel
  doc: '[INT]     use multiple threads for computation [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_graph_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0
cwlVersion: v1.1
baseCommand:
- metagraph
- stats
