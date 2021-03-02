version 1.0

task Bactopia {
  command <<<
    bactopia
  >>>
  runtime {
    docker: "quay.io/biocontainers/bactopia:1.6.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}