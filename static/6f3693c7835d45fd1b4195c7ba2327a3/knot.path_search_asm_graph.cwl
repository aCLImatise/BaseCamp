class: CommandLineTool
id: knot.path_search_asm_graph.cwl
inputs:
- id: in_self_lookup
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --self-lookup
- id: in_search_mode
  doc: ''
  type: string?
  inputBinding:
    prefix: --search-mode
- id: in_knot_dot_path_search
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.path_search
- asm_graph
