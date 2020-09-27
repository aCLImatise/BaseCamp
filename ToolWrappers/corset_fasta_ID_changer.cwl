class: CommandLineTool
id: corset_fasta_ID_changer.cwl
inputs:
- id: in_cluster_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- corset_fasta_ID_changer
