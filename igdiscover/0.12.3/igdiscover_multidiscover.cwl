class: CommandLineTool
id: igdiscover_multidiscover.cwl
inputs:
- id: minimum_frequency
  doc: Minimum number of datasets in which sequence must occur (default is no. of
    files divided by two)
  type: string
  inputBinding:
    prefix: --minimum-frequency
- id: minimum_db_diff
  doc: 'Use only sequences that have at least DIST differences to the database sequence.
    Default: 1'
  type: string
  inputBinding:
    prefix: --minimum-db-diff
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- multidiscover
