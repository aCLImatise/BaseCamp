version 1.0

task KaKsAnalysis {
  command <<<
    KaKsAnalysis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}