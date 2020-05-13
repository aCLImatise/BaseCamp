class: CommandLineTool
id: igdiscover.cwl
inputs:
- id: profile
  doc: Save profiling information to igdiscover.prof
  type: boolean
  inputBinding:
    prefix: --profile
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
