class: CommandLineTool
id: refgenie_unsubscribe.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional\nif REFGENIE environment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_s
  doc: ''
  type: string[]
  inputBinding:
    prefix: -s
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
- unsubscribe
