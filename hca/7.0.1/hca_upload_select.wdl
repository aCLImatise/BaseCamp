version 1.0

task HcaUploadSelect {
  input {
    String uri_or_alias
  }
  command <<<
    hca upload select \
      ~{uri_or_alias}
  >>>
  parameter_meta {
    uri_or_alias: "S3 URI of an upload area, or short alias."
  }
  output {
    File out_stdout = stdout()
  }
}