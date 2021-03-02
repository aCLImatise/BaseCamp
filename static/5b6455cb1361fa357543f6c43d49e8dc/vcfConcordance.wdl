version 1.0

task VcfConcordance {
  command <<<
    vcfConcordance
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}