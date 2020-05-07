class: CommandLineTool
id: FetchSequence.cwl
inputs:
- id: host
  doc: = "eutils.ncbi.nlm.nih.gov"
  type: string
  inputBinding:
    position: 0
- id: port
  doc: = 443
  type: string
  inputBinding:
    position: 1
- id: secure
  doc: = True
  type: string
  inputBinding:
    position: 2
- id: request_headers
  doc: = [("Connection","close")]
  type: string
  inputBinding:
    position: 3
- id: path
  doc: = "/entrez/eutils/efetch.fcgi"
  type: File
  inputBinding:
    position: 4
- id: query_string
  doc: = "?db=nucleotide&id=0&seq_start=0&seq_stop=0&rettype=fasta"
  type: string
  inputBinding:
    position: 5
- id: method
  doc: = "GET"
  type: string
  inputBinding:
    position: 6
- id: proxy
  doc: = Nothing
  type: string
  inputBinding:
    position: 7
- id: raw_body
  doc: = False
  type: string
  inputBinding:
    position: 8
- id: redirect_count
  doc: = 10
  type: string
  inputBinding:
    position: 9
- id: response_time_out
  doc: = ResponseTimeoutDefault
  type: string
  inputBinding:
    position: 10
- id: request_version
  doc: = HTTP/1.1
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- FetchSequence
