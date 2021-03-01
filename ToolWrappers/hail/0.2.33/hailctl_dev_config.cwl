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
hints: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- config
