class: CommandLineTool
id: o_subsample_fasta_file.cwl
inputs:
- id: in_fasta_file_subsample
  doc: FASTA file to subsample
  type: File
  inputBinding:
    position: 0
- id: in_integer
  doc: Number of random reads to keep for each sample in the new FASTA
  type: long
  inputBinding:
    position: 1
- id: in_file_output_file
  doc: FILE        Output file name
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- o-subsample-fasta-file
