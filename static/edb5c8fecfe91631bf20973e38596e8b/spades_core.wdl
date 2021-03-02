version 1.0

task Spadescore {
  command <<<
    spades_core
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  output {
    File out_stdout = stdout()
  }
}