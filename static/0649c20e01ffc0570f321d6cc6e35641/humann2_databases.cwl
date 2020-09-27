class: CommandLineTool
id: humann2_databases.cwl
inputs:
- id: in_available
  doc: print the available databases
  type: boolean
  inputBinding:
    prefix: --available
- id: in_download
  doc: "<build> <install_location>\ndownload the selected database to the install\
    \ location"
  type: string
  inputBinding:
    prefix: --download
- id: in_update_config
  doc: "update the config file to set the new database as the default [DEFAULT: yes]\n"
  type: string
  inputBinding:
    prefix: --update-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- humann2_databases
