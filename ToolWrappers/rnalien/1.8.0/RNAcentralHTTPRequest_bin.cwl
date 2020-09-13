class: CommandLineTool
id: ../../../RNAcentralHTTPRequest_bin.cwl
inputs:
- id: in_host
  doc: = "rnacentral.org"
  type: string
  inputBinding:
    position: 0
- id: in_port
  doc: = 80
  type: string
  inputBinding:
    position: 1
- id: in_secure
  doc: = False
  type: string
  inputBinding:
    position: 2
- id: in_request_headers
  doc: = [("Connection","close")]
  type: string
  inputBinding:
    position: 3
- id: in_path
  doc: = "/api/v1/rna/"
  type: File
  inputBinding:
    position: 4
- id: in_query_string
  doc: = "?md5=d41d8cd98f00b204e9800998ecf8427e"
  type: string
  inputBinding:
    position: 5
- id: in_method
  doc: = "GET"
  type: string
  inputBinding:
    position: 6
- id: in_proxy
  doc: = Nothing
  type: string
  inputBinding:
    position: 7
- id: in_raw_body
  doc: = False
  type: string
  inputBinding:
    position: 8
- id: in_redirect_count
  doc: = 10
  type: string
  inputBinding:
    position: 9
- id: in_response_time_out
  doc: = ResponseTimeoutDefault
  type: string
  inputBinding:
    position: 10
- id: in_request_version
  doc: = HTTP/1.1
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAcentralHTTPRequest-bin
