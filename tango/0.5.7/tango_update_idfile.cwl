class: CommandLineTool
id: ../../../tango_update_idfile.cwl
inputs:
- id: tango
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: update
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: taxon_map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: id_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: new_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- update
- idfile
