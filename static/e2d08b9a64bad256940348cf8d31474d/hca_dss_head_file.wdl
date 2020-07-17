version 1.0

task HcaDssHeadFile {
  input {
    String? uuid
    String? replica
  }
  command <<<
    hca dss head-file \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the file."
    replica: "Replica to fetch from."
  }
}