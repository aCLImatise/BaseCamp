class: CommandLineTool
id: refgenie_list.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if\nREFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for reading
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_reference_assembly_id
  doc: '[G ...], --genome [G ...]  Reference assembly ID, e.g. mm10.'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_recipes
  doc: List available recipes.
  type: boolean?
  inputBinding:
    prefix: --recipes
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- list
