version 1.0

task HcaUploadForget {
  input {
    String uuid_or_alias
  }
  command <<<
    hca upload forget \
      ~{uuid_or_alias}
  >>>
  parameter_meta {
    uuid_or_alias: "Full or partial (alias) UUID of an upload area."
  }
}