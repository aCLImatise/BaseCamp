version 1.0

task Elprep {
  command <<<
    elprep
  >>>
  runtime {
    docker: "quay.io/biocontainers/elprep:5.0.1--h375a9b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}