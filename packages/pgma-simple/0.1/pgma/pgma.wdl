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
  parameter_meta {
    names: ""
    distances: ""
  }
  output {
    File out_stdout = stdout()
  }
}