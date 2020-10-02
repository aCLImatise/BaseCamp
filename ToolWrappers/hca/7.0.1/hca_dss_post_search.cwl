class: CommandLineTool
id: hca_dss_post_search.cwl
inputs:
- id: in_es_query
  doc: Elasticsearch query
  type: string
  inputBinding:
    prefix: --es-query
- id: in_output_format
  doc: Specifies the output format. The default format, `summary`, is a list of UUIDs
    for bundles that match the query. Set this parameter to `raw` to get the verbatim
    JSON metadata for bundles that match the query. When using `output_format raw`
    the `per_page` size is limit to no more than 10 to avoid excessively large response
    sizes.
  type: string
  inputBinding:
    prefix: --output-format
- id: in_replica
  doc: Replica to search.
  type: string
  inputBinding:
    prefix: --replica
- id: in_per_page
  doc: Max number of results to return per page. When using `output_format raw` the
    `per_page` size is limit to no more than 10 to avoid excessively large response
    sizes.
  type: long
  inputBinding:
    prefix: --per-page
- id: in_search_after
  doc: '**Search-After-Context**. An internal state pointer parameter for use with
    pagination. This parameter is referenced by the `Link` header as described in
    the "Pagination" section. The API client should not need to set this parameter
    directly; it should instead directly fetch the URL given in the `Link` header.'
  type: string
  inputBinding:
    prefix: --search-after
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
- post-search
