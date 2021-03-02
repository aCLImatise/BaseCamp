class: CommandLineTool
id: hca_dss_get_bundles_all.cwl
inputs:
- id: in_replica
  doc: Replica to fetch from.
  type: string?
  inputBinding:
    prefix: --replica
- id: in_prefix
  doc: "Used to specify the beginning of a particular bundle UUID.  Capitalized letters\
    \ will be lower-cased as is done when users submit a uuid (all uuids have lower-cased\
    \ letters upon ingestion into the dss).  Characters other than letters, numbers,\
    \ and dashes are not allowed and will error.\nThe specified character(s) will\
    \ return all available bundle uuids starting with that character(s)."
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string?
  inputBinding:
    prefix: --token
- id: in_per_page
  doc: Max number of results to return per page.
  type: long?
  inputBinding:
    prefix: --per-page
- id: in_search_after
  doc: '**Search-After-Context**. An internal state pointer parameter for use with
    pagination. This parameter is referenced by the `Link` header as described in
    the "Pagination" section. The API client should not need to set this parameter
    directly; it should instead directly fetch the URL given in the `Link` header.'
  type: string?
  inputBinding:
    prefix: --search-after
- id: in_no_paginate
  doc: Do not automatically page the responses
  type: boolean?
  inputBinding:
    prefix: --no-paginate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-bundles-all
