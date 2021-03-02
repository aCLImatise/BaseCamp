version 1.0

task Flapjack {
  command <<<
    flapjack
  >>>
  runtime {
    docker: "quay.io/biocontainers/flapjack:1.20.10.07--0"
  }
  output {
    File out_stdout = stdout()
  }
}