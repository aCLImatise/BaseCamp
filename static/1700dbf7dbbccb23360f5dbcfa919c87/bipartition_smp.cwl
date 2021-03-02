class: CommandLineTool
id: bipartition_smp.cwl
inputs:
- id: in_bi_partition
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file_one
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_seq_file_two
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_pfs_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bipartition-smp
