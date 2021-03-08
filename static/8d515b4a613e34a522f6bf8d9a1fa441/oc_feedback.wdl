version 1.0

task OcFeedback {
  input {
    String oc
  }
  command <<<
    oc feedback \
      ~{oc}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    oc: ""
  }
  output {
    File out_stdout = stdout()
  }
}