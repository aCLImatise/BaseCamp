class: CommandLineTool
id: refgenie_upgrade.cwl
inputs:
- id: in_genome_config
  doc: "Path to local genome configuration file. Optional if REFGENIE\nenvironment\
    \ variable is set."
  type: File?
  inputBinding:
    prefix: --genome-config
- id: in_skip_read_lock
  doc: Whether the config file should not be locked for reading
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_target_version
  doc: Target config version for the upgrade.
  type: string?
  inputBinding:
    prefix: --target-version
- id: in_force
  doc: Do not prompt before action, approve upfront.
  type: boolean?
  inputBinding:
    prefix: --force
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
- upgrade
