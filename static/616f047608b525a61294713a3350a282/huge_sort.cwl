class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/huge_sort.pl.cwl
inputs:
- id: keep
  doc: 'keep the unsorted file The default is to delete the unsorted file. '
  type: boolean
  inputBinding:
    prefix: --keep
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-sort.pl
