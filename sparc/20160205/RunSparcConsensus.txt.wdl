version 1.0

task RunSparcConsensustxt {
  command <<<
    RunSparcConsensus_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}