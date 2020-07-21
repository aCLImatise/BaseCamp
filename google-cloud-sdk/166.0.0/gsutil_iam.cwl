class: CommandLineTool
id: ../../../gsutil_iam.cwl
inputs:
- id: performs_recursively_objects
  doc: Performs "iam set" recursively to all objects under the specified bucket.
  type: boolean
  inputBinding:
    prefix: -R
- id: performs_request_object
  doc: Performs "iam set" request on all object versions.
  type: boolean
  inputBinding:
    prefix: -a
- id: performs_precondition_check
  doc: Performs the precondition check on each object with the specified etag before
    setting the policy.
  type: string
  inputBinding:
    prefix: -e
- id: default_gsutil_error
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
