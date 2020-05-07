class: CommandLineTool
id: blastdb_convert.cwl
inputs:
- id: out
  doc: '[-logfile File_Name] [-version]'
  type: string
  inputBinding:
    prefix: -out
outputs: []
cwlVersion: v1.1
baseCommand:
- blastdb_convert
