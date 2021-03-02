class: CommandLineTool
id: hydra_router.cwl
inputs:
- id: in_config
  doc: "Configuration file. (req'd)\nCol 1. Sample Id (string)\nCol 2. Mapping file\
    \ (path/file)\nCol 3. Expected insert size (integer)\nCol 4. Variance (integer)\n\
    Col 5. Num. variances (integer)"
  type: boolean?
  inputBinding:
    prefix: -config
- id: in_routed_list
  doc: Output file containing the list of routed files (req'd).
  type: File?
  inputBinding:
    prefix: -routedList
- id: in_use_mappings
  doc: Don't count mappings, use the num_mappings fields.
  type: boolean?
  inputBinding:
    prefix: -useMappings
- id: in_hydra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_routed_list
  doc: Output file containing the list of routed files (req'd).
  type: File?
  outputBinding:
    glob: $(inputs.in_routed_list)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- hydra-router
