version 1.0

task Entropyanalysis {
  command <<<
    entropy_analysis
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}