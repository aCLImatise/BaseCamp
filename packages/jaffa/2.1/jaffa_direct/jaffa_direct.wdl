version 1.0

task Jaffadirect {
  command <<<
    jaffa_direct
  >>>
  runtime {
    docker: "quay.io/biocontainers/jaffa:2.1--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}