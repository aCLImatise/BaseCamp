version 1.0

task RunSparcConsensustxt {
  command <<<
    RunSparcConsensus_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}