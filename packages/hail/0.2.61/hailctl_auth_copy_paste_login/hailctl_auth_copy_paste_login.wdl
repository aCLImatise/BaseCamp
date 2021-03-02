version 1.0

task HailctlAuthCopypastelogin {
  input {
    String? namespace
  }
  command <<<
    hailctl auth copy_paste_login \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    namespace: "Specify namespace for auth server. (default: from\\ndeploy configuration)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}