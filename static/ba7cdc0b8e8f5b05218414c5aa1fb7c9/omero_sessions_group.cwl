class: CommandLineTool
id: omero_sessions_group.cwl
inputs:
- id: target
  doc: Id or name of the group to switch this session to
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- group
