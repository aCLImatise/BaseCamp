class: CommandLineTool
id: mlocarna_nnames.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- mlocarna_nnames
