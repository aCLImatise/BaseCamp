version 1.0

task HcaDssDeletecollection {
  input {
    Int? uuid
    String? replica
  }
  command <<<
    hca dss delete_collection \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the collection."
    replica: "Replica to delete from."
  }
  output {
    File out_stdout = stdout()
  }
}