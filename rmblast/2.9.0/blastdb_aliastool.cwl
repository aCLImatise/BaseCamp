class: CommandLineTool
id: blastdb_aliastool.cwl
inputs:
- id: num_volumes
  doc: .
  type: string
  inputBinding:
    prefix: -num_volumes
outputs: []
cwlVersion: v1.1
baseCommand:
- blastdb_aliastool
