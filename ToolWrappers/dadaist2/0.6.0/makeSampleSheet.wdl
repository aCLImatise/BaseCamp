version 1.0

task MakeSampleSheet {
  command <<<
    makeSampleSheet
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.6.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}