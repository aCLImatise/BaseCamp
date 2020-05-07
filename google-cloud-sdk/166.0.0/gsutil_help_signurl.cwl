class: CommandLineTool
id: gsutil_help_signurl.cwl
inputs:
- id: m
  doc: Specifies the HTTP method to be authorized for use with the signed url, default
    is GET. You may also specify RESUMABLE to create a signed resumable upload start
    URL. When using a signed URL to start a resumable upload session, you will need
    to specify the 'x-goog-resumable:start' header in the request or else signature
    validation will fail.
  type: boolean
  inputBinding:
    prefix: -m
- id: d
  doc: Specifies the duration that the signed url should be valid for, default duration
    is 1 hour. Times may be specified with no suffix (default hours), or with s =
    seconds, m = minutes, h = hours, d = days. This option may be specified multiple
    times, in which case the duration the link remains valid is the sum of all the
    duration options.
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: Specifies the content type for which the signed url is valid for.
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: Specify the keystore password instead of prompting.
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- signurl
