version 1.0

task Varda2clientTask {
  input {
    String? uuid
  }
  command <<<
    varda2_client task \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    uuid: "Task UUID"
  }
  output {
    File out_stdout = stdout()
  }
}