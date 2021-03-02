version 1.0

task GcloudAppApplications {
  input {
    String versions
  }
  command <<<
    gcloud app applications_ \
      ~{versions}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    versions: "command may be         browse | create | deploy | describe | open-console"
  }
  output {
    File out_stdout = stdout()
  }
}