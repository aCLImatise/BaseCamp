version 1.0

task HcaDssGetFile {
  input {
    String? uuid
    String? replica
    String? token
    String? direct_url
    String? content_disposition
  }
  command <<<
    hca dss get-file \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(direct_url) then ("--directurl " +  '"' + direct_url + '"') else ""} \
      ~{if defined(content_disposition) then ("--content-disposition " +  '"' + content_disposition + '"') else ""}
  >>>
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the file."
    replica: "Replica to fetch from."
    token: "Token to manage retries.  End users constructing queries should not set this parameter."
    direct_url: "When set to true, the response will contain API-specific URLs that are tied to the specified replica, for example `gs://bucket/object` or `s3://bucket/object` The use of presigned URLs is recommended for data access. Cloud native URLs are currently provided for a limited set of use cases and may not be provided in the future. If cloud native URLs are required, please contact the data store team regarding the credentials necessary to use them."
    content_disposition: "Optional and does not work when directurl=true (only works with the default presigned url response). If this parameter is provided, the response from fetching the returned presigned url will include the specified Content-Disposition header. This can be useful to indicate to a browser that a file should be downloaded rather than opened in a new tab, and can also supply the original filename in the response.  Example: content_disposition=\"attachment; filename=data.json\""
  }
}