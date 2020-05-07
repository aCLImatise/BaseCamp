class: CommandLineTool
id: genomestrip_java_options_subcommand args.cwl
inputs:
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomestrip
- java_options
- subcommand args
