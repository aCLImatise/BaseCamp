class: CommandLineTool
id: GeneIdToUniProtId_bin.cwl
inputs:
- id: in_host
  doc: = "rest.ensemblgenomes.org"
  type: string
  inputBinding:
    position: 0
- id: in_secure
  doc: = False
  type: string
  inputBinding:
    position: 1
- id: in_query_string
  doc: = "?external_db=Uniprot/SWISSPROT;all_levels=1;content-type=application/json"
  type: string
  inputBinding:
    position: 2
- id: in_method
  doc: = "GET"
  type: string
  inputBinding:
    position: 3
- id: in_proxy
  doc: = Nothing
  type: string
  inputBinding:
    position: 4
- id: in_raw_body
  doc: = False
  type: string
  inputBinding:
    position: 5
- id: in_response_time_out
  doc: = ResponseTimeoutDefault
  type: string
  inputBinding:
    position: 6
- id: in_request_version
  doc: = HTTP/1.1
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- GeneIdToUniProtId-bin
