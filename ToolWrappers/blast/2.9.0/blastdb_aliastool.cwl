class: CommandLineTool
id: ../../../blastdb_aliastool.cwl
inputs:
- id: in_num_volumes_dot
  doc: ''
  type: string
  inputBinding:
    prefix: -num_volumes.
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blastdb_aliastool
