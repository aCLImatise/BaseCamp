version 1.0

task AmptkSyntheticMockpy {
  command <<<
    amptk_synthetic_mock_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}