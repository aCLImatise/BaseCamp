class: CommandLineTool
id: o_subsample_fasta_file_FILE_FILE.cwl
inputs:
- id: integer
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- o-subsample-fasta-file
- FILE
- FILE
