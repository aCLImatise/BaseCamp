version 1.0

task Pgma {
  input {
    String names
    String? distances
  }
  command <<<
    pgma \
      ~{names} \
      ~{distances}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    names: ""
    distances: ""
  }
  output {
    File out_stdout = stdout()
  }
}