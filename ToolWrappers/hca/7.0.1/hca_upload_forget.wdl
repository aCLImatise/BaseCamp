version 1.0

task HcaUploadForget {
  input {
    String uuid_or_alias
  }
  command <<<
    hca upload forget \
      ~{uuid_or_alias}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uuid_or_alias: "Full or partial (alias) UUID of an upload area."
  }
  output {
    File out_stdout = stdout()
  }
}