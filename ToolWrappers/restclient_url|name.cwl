class: CommandLineTool
id: restclient_url|name.cwl
inputs:
- id: in_rest_client
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_vertical_line_put_vertical_line_post_vertical_line_delete
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_url_vertical_line_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_username
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_password
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- restclient
- url|name
