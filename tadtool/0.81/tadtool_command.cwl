class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tadtool_command.cwl
inputs:
- id: plot
  doc: Main interactive TADtool plotting window
  type: string
  inputBinding:
    position: 0
- id: tads
  doc: Call TADs with pre-defined parameters
  type: string
  inputBinding:
    position: 1
- id: subset
  doc: Reduce a matrix to a smaller region.
  type: string
  inputBinding:
    position: 2
- id: command
  doc: Subcommand to run
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tadtool
- command
