version 1.0

task HcaDssDeleteBundle {
  input {
    String? reason
    String? uuid
    String? replica
  }
  command <<<
    hca dss delete-bundle \
      ~{if defined(reason) then ("--reason " +  '"' + reason + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    reason: "User-friendly reason for the bundle or timestamp-specfic bundle deletion."
    uuid: "A RFC4122-compliant ID for the bundle."
    replica: "Replica to write to."
  }
}