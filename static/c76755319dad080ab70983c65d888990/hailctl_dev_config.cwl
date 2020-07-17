class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_dev_config.cwl
inputs:
- id: location
  doc: 'Location. (default: external)'
  type: string
  inputBinding:
    prefix: --location
- id: override
  doc: 'List of comma-separated service=namespace overrides. (default: none)'
  type: string
  inputBinding:
    prefix: --override
- id: namespace
  doc: Default namespace. Show the current configuration if not specified.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- config
