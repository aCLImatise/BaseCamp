#!/usr/bin/env cwl-runner

baseCommand:
- pyega3
class: CommandLineTool
cwlVersion: v1.0
id: pyega3
inputs:
- doc: Extra debugging messages
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: JSON file containing credentials/config e.g.{'username':'user1','password':'toor'}
  id: config_file
  inputBinding:
    prefix: --config-file
  type: string
- doc: JSON file containing server config e.g.{'url_auth':'aai url','url_api':'api
    url', 'url_api_ticket':'htsget url', 'client_secret':'client secret'}
  id: server_file
  inputBinding:
    prefix: --server-file
  type: string
- doc: Download using specified number of connections
  id: connections
  inputBinding:
    prefix: --connections
  type: string
- doc: Test user activated
  id: test
  inputBinding:
    prefix: --test
  type: boolean
