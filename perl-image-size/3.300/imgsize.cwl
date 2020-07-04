class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/imgsize.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- imgsize
