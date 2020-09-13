version 1.0

task HcaDssGetevent {
  input {
    String? uuid
    String? replica
  }
  command <<<
    hca dss get_event \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    uuid: "Bundle unique ID."
    replica: "Replica to fetch from."
  }
  output {
    File out_stdout = stdout()
  }
}