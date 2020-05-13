class: CommandLineTool
id: igdiscover_commonv.cwl
inputs:
- id: minimum_frequency
  doc: Minimum number of datasets in which sequence must occur (default is no. of
    files divided by two)
  type: string
  inputBinding:
    prefix: --minimum-frequency
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- commonv
