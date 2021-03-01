version 1.0

task GcloudAuthApplicationdefault {
  input {
    String credentials
    String application_dot
    String login
  }
  command <<<
    gcloud auth application_default \
      ~{credentials} \
      ~{application_dot} \
      ~{login}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    credentials: "SYNOPSIS"
    application_dot: "More information on ADC and how they work can be found here:"
    login: "Acquire new user credentials to use for Application Default"
  }
  output {
    File out_stdout = stdout()
  }
}