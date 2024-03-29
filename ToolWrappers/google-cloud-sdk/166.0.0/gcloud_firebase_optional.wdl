version 1.0

task GcloudFirebaseOptional {
  input {
    String? flags
    String group
  }
  command <<<
    gcloud firebase optional \
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