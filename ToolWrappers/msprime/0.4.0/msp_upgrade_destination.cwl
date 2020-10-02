class: CommandLineTool
id: msp_upgrade_destination.cwl
inputs:
- id: in_msp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_upgrade
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msp
- upgrade
- destination
