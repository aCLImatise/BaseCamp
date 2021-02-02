version 1.0

task GcloudAuthApplicationdefault {
  input {
    String? i_am_account
    String credentials
    String application_dot
    String login
  }
  command <<<
    gcloud auth application_default \
      ~{credentials} \
      ~{application_dot} \
      ~{login} \
      ~{if defined(i_am_account) then ("--iam-account " +  '"' + i_am_account + '"') else ""}
  >>>
  parameter_meta {
    i_am_account: "$ export GOOGLE_APPLICATION_CREDENTIALS=key.json\\n$ ./my_application.sh"
    credentials: "SYNOPSIS"
    application_dot: "More information on ADC and how they work can be found here:"
    login: "Acquire new user credentials to use for Application Default"
  }
  output {
    File out_stdout = stdout()
  }
}