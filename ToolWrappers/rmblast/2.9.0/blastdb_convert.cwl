class: CommandLineTool
id: blastdb_convert.cwl
inputs:
- id: in_out
  doc: '[-logfile File_Name] [-version]'
  type: string
  inputBinding:
    prefix: -out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blastdb_convert
