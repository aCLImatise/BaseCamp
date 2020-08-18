class: CommandLineTool
id: ../../../arb_help_useredit.sh.cwl
inputs:
- id: help_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: start_vertical_line_end
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_help_useredit.sh
