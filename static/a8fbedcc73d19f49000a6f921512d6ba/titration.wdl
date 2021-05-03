version 1.0

task Titration {
  command <<<
    titration
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmip:2.6.5--h8c3ec31_0"
  }
  output {
    File out_stdout = stdout()
  }
}