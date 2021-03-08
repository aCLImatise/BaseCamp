version 1.0

task OcUtilSendgui {
  input {
    String? user
    File path
  }
  command <<<
    oc util send_gui \
      ~{path} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    user: "User who will own the job. Defaults to single user\\ndefault user.\\n"
    path: "Path to result database"
  }
  output {
    File out_stdout = stdout()
  }
}