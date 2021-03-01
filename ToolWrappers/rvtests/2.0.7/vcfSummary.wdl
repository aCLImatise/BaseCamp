version 1.0

task VcfSummary {
  command <<<
    vcfSummary
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}