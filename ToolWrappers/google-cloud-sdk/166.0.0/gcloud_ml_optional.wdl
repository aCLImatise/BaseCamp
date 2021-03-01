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
  runtime {
    docker: "None"
  }
  parameter_meta {
    flags: ""
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}