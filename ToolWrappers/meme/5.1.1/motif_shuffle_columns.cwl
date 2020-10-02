class: CommandLineTool
id: motif_shuffle_columns.cwl
inputs:
- id: in_output_file_name
  doc: output file name
  type: File
  inputBinding:
    prefix: -o
- id: in_seed
  doc: pseudo-random number generator seed
  type: long
  inputBinding:
    prefix: -seed
- id: in_motif_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- motif-shuffle-columns
