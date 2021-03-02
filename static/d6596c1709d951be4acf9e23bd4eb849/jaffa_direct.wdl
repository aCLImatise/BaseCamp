version 1.0

task Jaffadirect {
  command <<<
    jaffa_direct
  >>>
  runtime {
    docker: "quay.io/biocontainers/jaffa:2.00--0"
  }
  output {
    File out_stdout = stdout()
  }
}