class: CommandLineTool
id: metagraph_server_query.cwl
inputs:
- id: in_port
  doc: '[INT]         TCP port for incoming connections [5555]'
  type: boolean?
  inputBinding:
    prefix: --port
- id: in_address
  doc: 'interface for incoming connections (default: all)'
  type: boolean?
  inputBinding:
    prefix: --address
- id: in_sparse
  doc: use the row-major sparse matrix to annotate graph [off]
  type: boolean?
  inputBinding:
    prefix: --sparse
- id: in_parallel
  doc: '[INT]     maximum number of parallel connections [1]'
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_verbose
  doc: switch on verbose output [off]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
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
- server_query
