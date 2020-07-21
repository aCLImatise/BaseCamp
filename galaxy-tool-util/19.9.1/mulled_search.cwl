class: CommandLineTool
id: ../../../mulled_search.cwl
inputs:
- id: organization
  doc: Change organization. Default is biocontainers.
  type: string
  inputBinding:
    prefix: --organization
- id: non_strict
  doc: Autocorrection of typos activated. Lists more results but can be confusing.
    For too many queries quay.io blocks the request and the results can be incomplete.
  type: boolean
  inputBinding:
    prefix: --non-strict
- id: search
  doc: The name of the tool you want to search for.
  type: string
  inputBinding:
    prefix: --search
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-search
