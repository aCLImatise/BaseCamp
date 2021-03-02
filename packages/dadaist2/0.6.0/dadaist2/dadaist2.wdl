version 1.0

task Dadaist2 {
  command <<<
    dadaist2
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.6.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}