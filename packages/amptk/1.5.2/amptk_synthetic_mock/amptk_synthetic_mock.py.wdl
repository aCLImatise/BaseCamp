version 1.0

task AmptkSyntheticMockpy {
  command <<<
    amptk_synthetic_mock_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}