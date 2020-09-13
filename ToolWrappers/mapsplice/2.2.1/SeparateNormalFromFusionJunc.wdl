version 1.0

task SeparateNormalFromFusionJunc {
  command <<<
    SeparateNormalFromFusionJunc
  >>>
  output {
    File out_stdout = stdout()
  }
}