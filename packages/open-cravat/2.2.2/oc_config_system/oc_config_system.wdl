version 1.0

task OcConfigSystem {
  input {
    String oc
  }
  command <<<
    oc config system \
      ~{oc}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    oc: ""
  }
  output {
    File out_stdout = stdout()
  }
}