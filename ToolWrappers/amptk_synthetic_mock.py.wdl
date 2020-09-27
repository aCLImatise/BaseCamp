version 1.0

task AmptkSyntheticMockpy {
  command <<<
    amptk_synthetic_mock_py
  >>>
  output {
    File out_stdout = stdout()
  }
}