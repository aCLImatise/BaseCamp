version 1.0

task HcaDssGetEvent {
  input {
    String? uuid
    String? replica
  }
  command <<<
    hca dss get-event \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    uuid: "Bundle unique ID."
    replica: "Replica to fetch from."
  }
}