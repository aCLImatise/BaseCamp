class: CommandLineTool
id: hailctl_dev_config.cwl
inputs:
- id: in_location
  doc: 'Location. (default: external)'
  type: string?
  inputBinding:
    prefix: --location
- id: in_override
  doc: "List of comma-separated service=namespace overrides.\n(default: none)\n"
  type: string?
  inputBinding:
    prefix: --override
- id: in_namespace
  doc: "Default namespace. Show the current configuration if\nnot specified."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- config
