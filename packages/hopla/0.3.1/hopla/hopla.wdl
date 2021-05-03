version 1.0

task Hopla {
  command <<<
    hopla
  >>>
  runtime {
    docker: "quay.io/biocontainers/hopla:0.3.1--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}