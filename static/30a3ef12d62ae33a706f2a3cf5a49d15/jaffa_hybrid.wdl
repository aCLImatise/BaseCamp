version 1.0

task Jaffahybrid {
  command <<<
    jaffa_hybrid
  >>>
  runtime {
    docker: "quay.io/biocontainers/jaffa:2.00--0"
  }
  output {
    File out_stdout = stdout()
  }
}