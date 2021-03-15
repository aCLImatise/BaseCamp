class: CommandLineTool
id: metagraph_DNA_compare.cwl
inputs:
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
- compare
