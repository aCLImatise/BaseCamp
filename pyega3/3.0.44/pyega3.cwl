class: CommandLineTool
id: pyega3.cwl
inputs:
- id: debug
  doc: Extra debugging messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: config_file
  doc: JSON file containing credentials/config e.g.{'username':'user1','password':'toor'}
  type: string
  inputBinding:
    prefix: --config-file
- id: server_file
  doc: JSON file containing server config e.g.{'url_auth':'aai url','url_api':'api
    url', 'url_api_ticket':'htsget url', 'client_secret':'client secret'}
  type: string
  inputBinding:
    prefix: --server-file
- id: connections
  doc: Download using specified number of connections
  type: string
  inputBinding:
    prefix: --connections
- id: test
  doc: Test user activated
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- pyega3
