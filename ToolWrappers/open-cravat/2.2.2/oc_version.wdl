version 1.0

task OcVersion {
  input {
    String oc
  }
  command <<<
    oc version \
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