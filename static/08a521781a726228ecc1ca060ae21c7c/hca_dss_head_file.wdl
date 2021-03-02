version 1.0

task HcaDssHeadfile {
  input {
    File? uuid
    String? replica
  }
  command <<<
    hca dss head_file \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the file."
    replica: "Replica to fetch from."
  }
  output {
    File out_stdout = stdout()
  }
}