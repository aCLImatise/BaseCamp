class: CommandLineTool
id: create_metaplots.bash_name.cwl
inputs:
- id: ri_bob_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- create_metaplots.bash
- name
