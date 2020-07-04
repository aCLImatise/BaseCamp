class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_bundle.cwl
inputs:
- id: uuid
  doc: Bundle unique ID.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: direct_urls
  doc: When set to true, the response will contain API-specific URLs that are tied
    to the specified replica, for example `gs://bucket/object` or `s3://bucket/object`
    This parameter is mutually exclusive with the presigned urls parameter. The use
    of presigned URLs is recommended for data access. Cloud native URLs are currently
    provided for a limited set of use cases and may not be provided in the future.
    If cloud native URLs are required, please contact the data store team regarding
    the credentials necessary to use them.
  type: string
  inputBinding:
    prefix: --directurls
- id: pre_signed_urls
  doc: Include presigned URLs in the response.  This is mutually exclusive with the
    directurls parameter.
  type: string
  inputBinding:
    prefix: --presignedurls
- id: token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string
  inputBinding:
    prefix: --token
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
- get-bundle
