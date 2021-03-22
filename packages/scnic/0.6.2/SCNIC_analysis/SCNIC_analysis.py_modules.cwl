class: CommandLineTool
id: SCNIC_analysis.py_modules.cwl
inputs:
- id: in_input_loc
  doc: "location of output from SCNIC_analysis.py within\n(default: None)"
  type: string?
  inputBinding:
    prefix: --input_loc
- id: in_output_loc
  doc: 'output directory (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_loc
- id: in_min_p
  doc: "minimum p-value to determine edges, p must have been\ncalculated (default:\
    \ None)"
  type: long?
  inputBinding:
    prefix: --min_p
- id: in_min_r
  doc: "minimum correlation value to determine edges (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --min_r
- id: in_method
  doc: "method to be used for determining modules, pick from:\nnaive, k_cliques or\
    \ louvain (default: naive)"
  type: string?
  inputBinding:
    prefix: --method
- id: in_k_size
  doc: "k value for use with the k-clique communities\nalgorithm (default: 3)"
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_gamma
  doc: "gamma value for use with louvain modularity\nmaximization, between 0 and 1\
    \ where 0 makes small\nmodules and 1 large modules (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --gamma
- id: in_table_loc
  doc: "biom table used to make network to be collapsed\n(default: None)"
  type: string?
  inputBinding:
    prefix: --table_loc
- id: in_prefix
  doc: "prefix for module names in collapsed file (default:\nmodule)"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_verbose
  doc: 'give verbose messages to STDOUT (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_loc
  doc: 'output directory (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_loc)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scnic:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- SCNIC_analysis.py
- modules
