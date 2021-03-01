class: CommandLineTool
id: gsutil_iam.cwl
inputs:
- id: in_i_d
  doc: ("user"|"serviceAccount"|"domain"|"group"):id
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_performs_recursively_objects
  doc: "Performs \"iam set\" recursively to all objects under the\nspecified bucket."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_performs_request_object
  doc: Performs "iam set" request on all object versions.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_performs_precondition_check
  doc: "Performs the precondition check on each object with the\nspecified etag before\
    \ setting the policy."
  type: string?
  inputBinding:
    prefix: -e
- id: in_default_gsutil_error
  doc: "Default gsutil error handling is fail-fast. This flag\nchanges the request\
    \ to fail-silent mode. This is implicitly\nset when invoking the gsutil -m option."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_efficiently_dot
  doc: CH EXAMPLES
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
- iam
