version 1.0

task HcaDssGetEvents {
  input {
    String? from_date
    String? to_date
    String? replica
    String? per_page
    String? token
    Boolean? no_paginate
  }
  command <<<
    hca dss get-events \
      ~{if defined(from_date) then ("--from-date " +  '"' + from_date + '"') else ""} \
      ~{if defined(to_date) then ("--to-date " +  '"' + to_date + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{true="--no-paginate" false="" no_paginate}
  >>>
  parameter_meta {
    from_date: "Timestamp to begin replaying events, in DSS_VERSION format.  If this is not provided, replay from the earliest event."
    to_date: "Timestamp to stop replaying events, in DSS_VERSION format.  If this is not provided, replay to the latest event."
    replica: "Replica to fetch from."
    per_page: "Max number of results to return per page."
    token: "Token to manage retries.  End users constructing queries should not set this parameter."
    no_paginate: "Do not automatically page the responses"
  }
}