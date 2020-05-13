class: CommandLineTool
id: tango_update_idfile.cwl
inputs:
- id: taxon_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: id_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: new_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- update
- idfile
