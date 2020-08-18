class: CommandLineTool
id: ../../../get_ids.cwl
inputs:
- id: specify_directory_containing
  doc: Specify the directory containing fasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: specify_output_file
  doc: Specify the output file
  type: boolean
  inputBinding:
    prefix: -o
- id: specify_fasta_file
  doc: Specify fasta file
  type: boolean
  inputBinding:
    prefix: -l
- id: specify_minimum_length
  doc: Specify minimum length to be incorporated
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- get-ids
