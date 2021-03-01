class: CommandLineTool
id: kneaddata_database.cwl
inputs:
- id: in_available
  doc: print the available databases
  type: boolean?
  inputBinding:
    prefix: --available
- id: in_download
  doc: "<build> <install_location>\ndownload the selected database to the install\
    \ location\n"
  type: string?
  inputBinding:
    prefix: --download
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kneaddata_database
