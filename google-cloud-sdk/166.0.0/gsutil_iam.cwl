class: CommandLineTool
id: gsutil_iam.cwl
inputs:
- id: d
  doc: ("user"|"serviceAccount"|"domain"|"group"):id
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: ("allUsers"|"allAuthenticatedUsers")
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: Performs "iam set" recursively to all objects under the specified bucket.
  type: boolean
  inputBinding:
    prefix: -R
- id: a
  doc: Performs "iam set" request on all object versions.
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: Performs the precondition check on each object with the specified etag before
    setting the policy.
  type: string
  inputBinding:
    prefix: -e
- id: f
  doc: Default gsutil error handling is fail-fast. This flag changes the request to
    fail-silent mode. This is implicitly set when invoking the gsutil -m option.
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: Performs "iam ch" recursively to all objects under the specified bucket.
  type: boolean
  inputBinding:
    prefix: -R
- id: f
  doc: Default gsutil error handling is fail-fast. This flag changes the request to
    fail-silent mode. This is implicitly set when invoking the gsutil -m option.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- iam
