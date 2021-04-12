version 1.0

task Hopla {
  command <<<
    hopla
  >>>
  runtime {
    docker: "quay.io/biocontainers/hopla:0.1.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}