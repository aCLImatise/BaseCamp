class: CommandLineTool
id: ../../../hmmconvert_hmmfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert
- hmmfile
