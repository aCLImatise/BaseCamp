version 1.0

task HcaDssGetcollection {
  input {
    Int? uuid
    String? replica
  }
  command <<<
    hca dss get_collection \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uuid: "A RFC4122-compliant ID for the collection."
    replica: "Replica to fetch from."
  }
  output {
    File out_stdout = stdout()
  }
}