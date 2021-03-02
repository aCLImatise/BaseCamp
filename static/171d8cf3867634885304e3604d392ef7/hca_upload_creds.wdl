version 1.0

task HcaUploadCreds {
  input {
    String uuid_or_alias
  }
  command <<<
    hca upload creds \
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