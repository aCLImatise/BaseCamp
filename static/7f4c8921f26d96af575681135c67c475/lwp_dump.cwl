class: CommandLineTool
id: ../../../lwp_dump.cwl
inputs:
- id: in_agent
  doc: ''
  type: string
  inputBinding:
    prefix: --agent
- id: in_keep_client_headers
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep-client-headers
- id: in_max_length
  doc: ''
  type: long
  inputBinding:
    prefix: --max-length
- id: in_method
  doc: ''
  type: string
  inputBinding:
    prefix: --method
- id: in_parse_head
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parse-head
- id: in_request
  doc: ''
  type: boolean
  inputBinding:
    prefix: --request
- id: in_url
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lwp-dump
