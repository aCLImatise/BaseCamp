class: CommandLineTool
id: ../../../kpal.cwl
inputs:
- id: show_programs_version
  doc: show program's version number and exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- kpal
