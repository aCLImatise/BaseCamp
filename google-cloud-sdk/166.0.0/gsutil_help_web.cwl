class: CommandLineTool
id: gsutil_help_web.cwl
inputs:
- id: m
  doc: Specifies the object name to serve when a bucket listing is requested via the
    CNAME alias to c.storage.googleapis.com.
  type: string
  inputBinding:
    prefix: -m
- id: e
  doc: <404.html>        Specifies the error page to serve when a request is made
    for a non-existent object via the CNAME alias to c.storage.googleapis.com.
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- web
