class: CommandLineTool
id: hca_dss_get_bundle.cwl
inputs:
- id: in_uuid
  doc: Bundle unique ID.
  type: string
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: in_direct_urls
  doc: "When set to true, the response will contain API-specific URLs that are tied\
    \ to the specified replica, for example `gs://bucket/object` or `s3://bucket/object`\n\
    This parameter is mutually exclusive with the presigned urls parameter. The use\
    \ of presigned URLs is recommended for data access. Cloud native URLs are currently\
    \ provided for a limited set of use cases and may not be provided in the future.\
    \ If cloud native URLs are required, please contact the data store team regarding\
    \ the credentials necessary to use them."
  type: long
  inputBinding:
    prefix: --directurls
- id: in_pre_signed_urls
  doc: Include presigned URLs in the response.  This is mutually exclusive with the
    directurls parameter.
  type: string
  inputBinding:
    prefix: --presignedurls
- id: in_token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string
  inputBinding:
    prefix: --token
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
- get-bundle
