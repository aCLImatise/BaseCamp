class: CommandLineTool
id: omero_help.cwl
inputs:
- id: topic
  doc: Command or topic for more information
  type: string
  inputBinding:
    position: 0
- id: recursive
  doc: Also print help for all subcommands
  type: boolean
  inputBinding:
    prefix: --recursive
- id: all
  doc: Print help for all commands and topics
  type: boolean
  inputBinding:
    prefix: --all
- id: list
  doc: Print list of all commands and subcommands
  type: boolean
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- help
