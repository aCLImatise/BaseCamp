class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_readlink.cwl
inputs:
- id: silent
  doc: suppress most error messages (on by default)
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: report error messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: end_output_line
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
- id: readlink
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_readlink
