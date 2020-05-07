class: CommandLineTool
id: kipoi.cwl
inputs:
- id: command
  doc: 'Subcommand to run; possible commands: preproc, predict, pull, ls, list_plugins,
    info, env, test, get-example, test-source, init'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kipoi
