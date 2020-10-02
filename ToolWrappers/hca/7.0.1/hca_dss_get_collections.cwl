class: CommandLineTool
id: hca_dss_get_collections.cwl
inputs:
- id: in_per_page
  doc: Max number of results to return per page.
  type: long
  inputBinding:
    prefix: --per-page
- id: in_start_at
  doc: An internal state pointer parameter for use with pagination. This parameter
    is referenced by the `Link` header as described in the "Pagination" section. The
    API client should not need to set this parameter directly; it should instead directly
    fetch the URL given in the `Link` header.
  type: string
  inputBinding:
    prefix: --start-at
- id: in_no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-collections
