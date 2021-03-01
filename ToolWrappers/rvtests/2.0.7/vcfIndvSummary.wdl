version 1.0

task VcfIndvSummary {
  command <<<
    vcfIndvSummary
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}