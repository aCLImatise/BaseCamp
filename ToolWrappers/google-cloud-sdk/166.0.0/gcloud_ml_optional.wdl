version 1.0

task GcloudMlOptional {
  input {
    String? flags
    String group
  }
  command <<<
    gcloud ml optional \
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