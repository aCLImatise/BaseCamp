class: CommandLineTool
id: gsutil_signurl.cwl
inputs:
- id: in_specifies_http_method
  doc: "Specifies the HTTP method to be authorized for use\nwith the signed url, default\
    \ is GET. You may also specify\nRESUMABLE to create a signed resumable upload\
    \ start URL. When\nusing a signed URL to start a resumable upload session, you\
    \ will\nneed to specify the 'x-goog-resumable:start' header in the\nrequest or\
    \ else signature validation will fail."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_specifies_duration_be
  doc: "Specifies the duration that the signed url should be valid\nfor, default duration\
    \ is 1 hour.\nTimes may be specified with no suffix (default hours), or\nwith\
    \ s = seconds, m = minutes, h = hours, d = days.\nThis option may be specified\
    \ multiple times, in which case\nthe duration the link remains valid is the sum\
    \ of all the\nduration options."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_specifies_content_type
  doc: "Specifies the content type for which the signed url is\nvalid for."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_specify_keystore_password
  doc: Specify the keystore password instead of prompting.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_documentation_dot
  doc: <https://cloud.google.com/storage/docs/authentication#generating-a-private-key>`_
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- signurl
