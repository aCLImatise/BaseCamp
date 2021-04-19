version 1.0

task Picard {
  command <<<
    picard
  >>>
  runtime {
    docker: "quay.io/biocontainers/picard:2.25.2--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}