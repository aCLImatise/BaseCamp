class: CommandLineTool
id: bifold_seq file 1_ct file.cwl
inputs:
- id: seqfile2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bifold
- seq file 1
- ct file
