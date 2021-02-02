class: CommandLineTool
id: FetchSequence_bin.cwl
inputs:
- id: in_host
  doc: = "eutils.ncbi.nlm.nih.gov"
  type: string
  inputBinding:
    position: 0
- id: in_secure
  doc: = True
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: = "/entrez/eutils/efetch.fcgi"
  type: File
  inputBinding:
    position: 2
- id: in_query_string
  doc: = "?db=nucleotide&id=0&seq_start=0&seq_stop=0&rettype=fasta"
  type: string
  inputBinding:
    position: 3
- id: in_method
  doc: = "GET"
  type: string
  inputBinding:
    position: 4
- id: in_proxy
  doc: = Nothing
  type: string
  inputBinding:
    position: 5
- id: in_raw_body
  doc: = False
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
cwlVersion: v1.1
baseCommand:
- FetchSequence-bin
