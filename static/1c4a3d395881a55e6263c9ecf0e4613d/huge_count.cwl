class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/huge_count.pl.cwl
inputs:
- id: token_list
  doc: ''
  type: boolean
  inputBinding:
    prefix: --tokenlist
- id: destination
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- huge-count.pl
