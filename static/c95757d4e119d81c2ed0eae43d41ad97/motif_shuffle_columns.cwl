class: CommandLineTool
id: ../../../motif_shuffle_columns.cwl
inputs:
- id: output_file_name
  doc: output file name
  type: File
  inputBinding:
    prefix: -o
- id: seed
  doc: pseudo-random number generator seed
  type: string
  inputBinding:
    prefix: -seed
- id: motif_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- motif-shuffle-columns
