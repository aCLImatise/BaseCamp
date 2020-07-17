class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ln.cwl
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
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ln
