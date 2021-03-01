version 1.0

task GcloudComponentsRestore {
  input {
    String? optional
    String? flags
  }
  command <<<
    gcloud components restore \
      ~{optional} \
      ~{flags}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    optional: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}