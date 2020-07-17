class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_file.cwl
inputs:
- id: uuid
  doc: A RFC4122-compliant ID for the file.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string
  inputBinding:
    prefix: --token
- id: direct_url
  doc: When set to true, the response will contain API-specific URLs that are tied
    to the specified replica, for example `gs://bucket/object` or `s3://bucket/object`
    The use of presigned URLs is recommended for data access. Cloud native URLs are
    currently provided for a limited set of use cases and may not be provided in the
    future. If cloud native URLs are required, please contact the data store team
    regarding the credentials necessary to use them.
  type: string
  inputBinding:
    prefix: --directurl
- id: content_disposition
  doc: 'Optional and does not work when directurl=true (only works with the default
    presigned url response). If this parameter is provided, the response from fetching
    the returned presigned url will include the specified Content-Disposition header.
    This can be useful to indicate to a browser that a file should be downloaded rather
    than opened in a new tab, and can also supply the original filename in the response.  Example:
    content_disposition="attachment; filename=data.json"'
  type: string
  inputBinding:
    prefix: --content-disposition
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-file
