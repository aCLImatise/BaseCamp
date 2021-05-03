version 1.0

task Jaffahybrid {
  command <<<
    jaffa_hybrid
  >>>
  runtime {
    docker: "quay.io/biocontainers/jaffa:2.1--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}