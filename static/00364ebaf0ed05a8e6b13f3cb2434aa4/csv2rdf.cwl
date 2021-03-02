class: CommandLineTool
id: csv2rdf.cwl
inputs:
- id: in_read_config_iniconfig
  doc: to read config from a .ini/config file - the file must contain one
  type: File?
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- csv2rdf
