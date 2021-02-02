version 1.0

task SingularityVerify {
  input {
    Boolean? all
    Int? groupid
    Boolean? json
    Boolean? local
    Int? s_if_id
    String? url
  }
  command <<<
    singularity verify \
      ~{if (all) then "--all" else ""} \
      ~{if defined(groupid) then ("--groupid " +  '"' + groupid + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(s_if_id) then ("--sif-id " +  '"' + s_if_id + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""}
  >>>
  parameter_meta {
    all: "verify all non-signature partitions in a SIF"
    groupid: "group ID to be verified"
    json: "output json"
    local: "only verify with local keys"
    s_if_id: "descriptor ID to be verified (default\\nsystem-partition)"
    url: "key server URL (default \\\"https://keys.sylabs.io\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}