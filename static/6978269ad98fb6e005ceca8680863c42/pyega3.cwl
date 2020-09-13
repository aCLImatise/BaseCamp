class: CommandLineTool
id: ../../../pyega3.cwl
inputs:
- id: in_debug
  doc: Extra debugging messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_config_file
  doc: "JSON file containing credentials/config\ne.g.{\"username\":\"user1\",\"password\"\
    :\"toor\"}"
  type: File
  inputBinding:
    prefix: --config-file
- id: in_server_file
  doc: "JSON file containing server config\ne.g.{\"url_auth\":\"aai url\",\"url_api\"\
    :\"api url\",\n\"url_api_ticket\":\"htsget url\", \"client_secret\":\"client\n\
    secret\"}"
  type: File
  inputBinding:
    prefix: --server-file
- id: in_connections
  doc: Download using specified number of connections
  type: long
  inputBinding:
    prefix: --connections
- id: in_test
  doc: Test user activated
  type: boolean
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyega3
