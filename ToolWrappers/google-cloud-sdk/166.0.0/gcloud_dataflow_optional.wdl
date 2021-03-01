version 1.0

task GcloudDataflowOptional {
  input {
    String? flags
    String group
  }
  command <<<
    gcloud dataflow optional \
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