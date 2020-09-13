class: CommandLineTool
id: ../../../abyss_db_txt.cwl
inputs:
- id: in_e
  doc: ':'
  type: string
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abyss-db-txt
