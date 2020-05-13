class: CommandLineTool
id: huge_sort.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: keep
  doc: 'keep the unsorted file The default is to delete the unsorted file. '
  type: boolean
  inputBinding:
    prefix: --keep
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-sort.pl
