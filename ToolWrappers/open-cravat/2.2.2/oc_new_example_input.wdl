version 1.0

task OcNewExampleinput {
  input {
    Directory directory
  }
  command <<<
    oc new example_input \
      ~{directory}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    directory: "Directory to make the example input file in"
  }
  output {
    File out_stdout = stdout()
  }
}