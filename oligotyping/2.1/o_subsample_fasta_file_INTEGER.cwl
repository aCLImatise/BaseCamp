class: CommandLineTool
id: o_subsample_fasta_file_INTEGER.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: integer
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- o-subsample-fasta-file
- INTEGER
