version 1.0

task HailctlAuthLogin {
  input {
    String? namespace
  }
  command <<<
    hailctl auth login \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    namespace: "Specify namespace for auth server. (default: from\\ndeploy configuration)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}