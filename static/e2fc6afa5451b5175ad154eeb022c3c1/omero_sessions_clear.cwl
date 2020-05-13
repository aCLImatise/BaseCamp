class: CommandLineTool
id: omero_sessions_clear.cwl
inputs:
- id: all
  doc: Remove all locally stored sessions not just inactive ones
  type: boolean
  inputBinding:
    prefix: --all
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- sessions
- clear
