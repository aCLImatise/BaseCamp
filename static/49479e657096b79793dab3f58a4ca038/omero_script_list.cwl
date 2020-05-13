class: CommandLineTool
id: omero_script_list.cwl
inputs:
- id: who
  doc: 'Who to execute for: user, group, user=1, group=5 (default=official)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- script
- list
