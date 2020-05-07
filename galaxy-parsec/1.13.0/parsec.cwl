class: CommandLineTool
id: parsec.cwl
inputs:
- id: verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: galaxy_instance
  doc: 'Name of instance in /home/ubuntu/.parsec.yml. This parameter can also be set
    via the environment variable PARSEC_GALAXY_INSTANCE [default: __default; required]'
  type: string
  inputBinding:
    prefix: --galaxy_instance
- id: path
  doc: config file path
  type: string
  inputBinding:
    prefix: --path
outputs: []
cwlVersion: v1.1
baseCommand:
- parsec
