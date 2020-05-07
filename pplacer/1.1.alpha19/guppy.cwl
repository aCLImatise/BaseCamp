class: CommandLineTool
id: guppy.cwl
inputs:
- id: cmds
  doc: Print a list of the available commands.
  type: boolean
  inputBinding:
    prefix: --cmds
- id: batch
  doc: Run the provided batch file of guppy commands
  type: boolean
  inputBinding:
    prefix: --batch
- id: quiet
  doc: Don't write messages to stdout (unless explicitly requested).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: help
  doc: Display this list of options and subcommands
  type: boolean
  inputBinding:
    prefix: -help
outputs: []
cwlVersion: v1.1
baseCommand:
- guppy
