class: CommandLineTool
id: reportAlignmentDifferences.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: long?
  inputBinding:
    prefix: -i
- id: in_snapper_two
  doc: -queries Q.fasta
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- reportAlignmentDifferences
