version 1.0

task OcConfigMd {
  input {
    Directory directory
  }
  command <<<
    oc config md \
      ~{directory}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    directory: "sets modules directory."
  }
  output {
    File out_stdout = stdout()
  }
}