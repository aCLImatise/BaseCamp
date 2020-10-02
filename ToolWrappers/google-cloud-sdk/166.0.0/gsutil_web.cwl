class: CommandLineTool
id: gsutil_web.cwl
inputs:
- id: in_specifies_object_name
  doc: "Specifies the object name to serve when a bucket\nlisting is requested via\
    \ the CNAME alias to\nc.storage.googleapis.com."
  type: string
  inputBinding:
    prefix: -m
- id: in_specifies_error_page
  doc: "Specifies the error page to serve when a request is made\nfor a non-existent\
    \ object via the CNAME alias to\nc.storage.googleapis.com."
  type: long
  inputBinding:
    prefix: -e
- id: in_page_dot
  doc: For example, suppose your company's Domain name is example.com. You could set
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- web
