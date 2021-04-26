version 1.0

task Hopla {
  command <<<
    hopla
  >>>
  runtime {
    docker: "quay.io/biocontainers/hopla:0.2.2--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}