class: CommandLineTool
id: humann2_databases.cwl
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
- id: update_config
  doc: 'update the config file to set the new database as the default [DEFAULT: yes]'
  type: string
  inputBinding:
    prefix: --update-config
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_databases
