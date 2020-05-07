class: CommandLineTool
id: ln.cwl
inputs:
- id: no_target_directory
  doc: treat LINK_NAME as a normal file always
  type: boolean
  inputBinding:
    prefix: --no-target-directory
- id: verbose
  doc: print name of each linked file
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ln
