class: CommandLineTool
id: lwp_request.cwl
inputs:
- id: m
  doc: use method for the request (default is 'GET')
  type: string
  inputBinding:
    prefix: -m
- id: f
  doc: make request even if lwp-request believes method is illegal
  type: boolean
  inputBinding:
    prefix: -f
- id: b
  doc: Use the specified URL as base
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: Set timeout value
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: Set the If-Modified-Since header on the request
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: use this content-type for POST, PUT, CHECKIN
  type: string
  inputBinding:
    prefix: -c
- id: a
  doc: Use text mode for content I/O
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: use this as a proxy
  type: string
  inputBinding:
    prefix: -p
- id: p
  doc: don't load proxy settings from environment
  type: boolean
  inputBinding:
    prefix: -P
- id: h
  doc: send this HTTP header (you can specify several)
  type: string
  inputBinding:
    prefix: -H
- id: c
  doc: :<password> provide credentials for basic authentication
  type: string
  inputBinding:
    prefix: -C
- id: u
  doc: Display method and URL before any response
  type: boolean
  inputBinding:
    prefix: -u
- id: u
  doc: Display request headers (implies -u)
  type: boolean
  inputBinding:
    prefix: -U
- id: s
  doc: Display response status code
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Display response status chain (implies -u)
  type: boolean
  inputBinding:
    prefix: -S
- id: e
  doc: Display response headers (implies -s)
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: Display whole chain of headers (implies -S and -U)
  type: boolean
  inputBinding:
    prefix: -E
- id: d
  doc: Do not display content
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: Process HTML content in various ways
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Show program version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- lwp-request
