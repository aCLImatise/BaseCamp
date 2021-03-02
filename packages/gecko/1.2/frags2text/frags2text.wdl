version 1.0

task Frags2text {
  command <<<
    frags2text
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecko:1.2--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}