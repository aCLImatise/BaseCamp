class: CommandLineTool
id: ../../../nseg_locut.cwl
inputs:
- id: ns_eg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: window
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: lo_cut
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: hi_cut
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- nseg
- locut
