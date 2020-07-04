version 1.0

task HcaDssDeleteCollection {
  input {
    String? uuid
    String? replica
  }
  command <<<
    hca dss delete-collection \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the collection."
    replica: "Replica to delete from."
  }
}