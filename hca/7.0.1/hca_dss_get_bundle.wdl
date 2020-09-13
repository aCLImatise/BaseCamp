version 1.0

task HcaDssGetbundle {
  input {
    String? uuid
    String? replica
    Int? direct_urls
    String? pre_signed_urls
    String? token
    Int? per_page
    String? start_at
    Boolean? no_paginate
  }
  command <<<
    hca dss get_bundle \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(direct_urls) then ("--directurls " +  '"' + direct_urls + '"') else ""} \
      ~{if defined(pre_signed_urls) then ("--presignedurls " +  '"' + pre_signed_urls + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(start_at) then ("--start-at " +  '"' + start_at + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  parameter_meta {
    uuid: "Bundle unique ID."
    replica: "Replica to fetch from."
    direct_urls: "When set to true, the response will contain API-specific URLs that are tied to the specified replica, for example `gs://bucket/object` or `s3://bucket/object`\\nThis parameter is mutually exclusive with the presigned urls parameter. The use of presigned URLs is recommended for data access. Cloud native URLs are currently provided for a limited set of use cases and may not be provided in the future. If cloud native URLs are required, please contact the data store team regarding the credentials necessary to use them."
    pre_signed_urls: "Include presigned URLs in the response.  This is mutually exclusive with the directurls parameter."
    token: "Token to manage retries.  End users constructing queries should not set this parameter."
    per_page: "Max number of results to return per page."
    start_at: "An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the \\\"Pagination\\\" section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}