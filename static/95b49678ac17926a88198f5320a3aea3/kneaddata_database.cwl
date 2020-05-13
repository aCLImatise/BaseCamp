class: CommandLineTool
id: kneaddata_database.cwl
inputs:
- id: available
  doc: print the available databases
  type: boolean
  inputBinding:
    prefix: --available
- id: download
  doc: <build> <install_location> download the selected database to the install location
  type: string
  inputBinding:
    prefix: --download
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata_database
