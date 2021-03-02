version 1.0

task CvaMd {
  input {
    Directory directory
  }
  command <<<
    cva md \
      ~{directory}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    directory: "sets modules directory."
  }
  output {
    File out_stdout = stdout()
  }
}