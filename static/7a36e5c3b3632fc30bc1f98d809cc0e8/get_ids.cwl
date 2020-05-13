class: CommandLineTool
id: get_ids.cwl
inputs:
- id: f
  doc: Specify the directory containing fasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: Specify the output file
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: Specify fasta file
  type: boolean
  inputBinding:
    prefix: -l
- id: x
  doc: Specify minimum length to be incorporated
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- get-ids
