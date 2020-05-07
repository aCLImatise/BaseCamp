class: CommandLineTool
id: o_subsample_fasta_file_FILE_INTEGER.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-subsample-fasta-file
- FILE
- INTEGER
