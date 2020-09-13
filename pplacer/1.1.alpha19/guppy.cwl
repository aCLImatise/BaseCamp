class: CommandLineTool
id: ../../../guppy.cwl
inputs:
- id: in_cmds
  doc: Print a list of the available commands.
  type: boolean
  inputBinding:
    prefix: --cmds
- id: in_batch
  doc: Run the provided batch file of guppy commands
  type: boolean
  inputBinding:
    prefix: --batch
- id: in_quiet
  doc: Don't write messages to stdout (unless explicitly requested).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_help
  doc: Display this list of options and subcommands
  type: boolean
  inputBinding:
    prefix: -help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
