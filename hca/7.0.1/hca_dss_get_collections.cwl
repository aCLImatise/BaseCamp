class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_collections.cwl
inputs:
- id: per_page
  doc: Max number of results to return per page.
  type: string
  inputBinding:
    prefix: --per-page
- id: start_at
  doc: An internal state pointer parameter for use with pagination. This parameter
    is referenced by the `Link` header as described in the "Pagination" section. The
    API client should not need to set this parameter directly; it should instead directly
    fetch the URL given in the `Link` header.
  type: string
  inputBinding:
    prefix: --start-at
- id: no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-collections
