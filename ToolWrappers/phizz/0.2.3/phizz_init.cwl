class: CommandLineTool
id: phizz_init.cwl
inputs:
- id: in_db_name
  doc: "--path TEXT\n--help          Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --db_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phizz
- init
