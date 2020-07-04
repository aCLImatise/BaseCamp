class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_sessions_list.cwl
inputs:
- id: no_purge
  doc: Do not remove inactive sessions
  type: boolean
  inputBinding:
    prefix: --no-purge
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- list
