class: CommandLineTool
id: tripaille.cwl
inputs:
- id: verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: instance
  doc: 'Name of instance in /home/ubuntu/.tripaille.yml. This parameter can also be
    set via the environment variable TRIPAILLE_INSTANCE  [default: __default; required]'
  type: string
  inputBinding:
    prefix: --instance
- id: path
  doc: config file path
  type: string
  inputBinding:
    prefix: --path
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
