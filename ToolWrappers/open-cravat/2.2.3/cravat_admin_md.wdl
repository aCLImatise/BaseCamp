version 1.0

task CravatadminMd {
  input {
    Directory directory
  }
  command <<<
    cravat_admin md \
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