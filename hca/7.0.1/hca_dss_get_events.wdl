version 1.0

task HcaDssGetevents {
  input {
    String? replica
    String? from_date
    String? to_date
    Int? per_page
    String? token
    Boolean? no_paginate
  }
  command <<<
    hca dss get_events \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(from_date) then ("--from-date " +  '"' + from_date + '"') else ""} \
      ~{if defined(to_date) then ("--to-date " +  '"' + to_date + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  parameter_meta {
    replica: "[--per-page PER_PAGE]"
    from_date: "Timestamp to begin replaying events, in DSS_VERSION format.  If this is not provided, replay from the earliest event."
    to_date: "Timestamp to stop replaying events, in DSS_VERSION format.  If this is not provided, replay to the latest event."
    per_page: "Max number of results to return per page."
    token: "Token to manage retries.  End users constructing queries should not set this parameter."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}