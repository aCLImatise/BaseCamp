class: CommandLineTool
id: get_ids.cwl
inputs:
- id: in_specify_directory_containing
  doc: Specify the directory containing fasta file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_specify_output_file
  doc: Specify the output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_specify_fasta_file
  doc: Specify fasta file
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_specify_minimum_length
  doc: Specify minimum length to be incorporated
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: Specify the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- get-ids
