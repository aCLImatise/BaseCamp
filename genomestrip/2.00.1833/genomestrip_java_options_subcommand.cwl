class: CommandLineTool
id: genomestrip_java_options_subcommand.cwl
inputs:
- id: subcommand_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genomestrip
- java_options
- subcommand
