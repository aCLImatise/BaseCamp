version 1.0

task HcaDssDeletebundle {
  input {
    String? reason
    Int? uuid
    String? replica
  }
  command <<<
    hca dss delete_bundle \
      ~{if defined(reason) then ("--reason " +  '"' + reason + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reason: "User-friendly reason for the bundle or timestamp-specfic bundle deletion."
    uuid: "A RFC4122-compliant ID for the bundle."
    replica: "Replica to write to."
  }
  output {
    File out_stdout = stdout()
  }
}