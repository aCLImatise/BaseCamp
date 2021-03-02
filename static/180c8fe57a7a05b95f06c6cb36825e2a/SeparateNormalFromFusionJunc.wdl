version 1.0

task SeparateNormalFromFusionJunc {
  command <<<
    SeparateNormalFromFusionJunc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}