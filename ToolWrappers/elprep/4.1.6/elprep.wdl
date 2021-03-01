version 1.0

task Elprep {
  command <<<
    elprep
  >>>
  runtime {
    docker: "quay.io/biocontainers/elprep:4.1.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}