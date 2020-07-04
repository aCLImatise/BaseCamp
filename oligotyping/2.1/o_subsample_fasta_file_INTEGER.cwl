class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o_subsample_fasta_file_INTEGER.cwl
inputs:
- id: o_subsample_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: integer
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: var_3
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- o-subsample-fasta-file
- INTEGER
