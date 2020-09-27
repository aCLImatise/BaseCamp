version 1.0

task GcloudSourceOptional {
  input {
    String? flags
    String group
  }
  command <<<
    gcloud source optional \
      ~{flags} \
      ~{group}
  >>>
  parameter_meta {
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}