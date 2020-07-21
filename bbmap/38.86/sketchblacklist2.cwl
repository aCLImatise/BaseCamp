class: CommandLineTool
id: ../../../sketchblacklist2.sh.cwl
inputs:
- id: sketch_blacklist_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchblacklist2.sh
