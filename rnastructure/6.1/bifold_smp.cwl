class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bifold_smp.cwl
inputs:
- id: bifold
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bifold-smp
