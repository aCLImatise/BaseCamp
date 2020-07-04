version 1.0

task ReadCovPlot {
  input {
    String bank
  }
  command <<<
    read-cov-plot \
      ~{bank}
  >>>
  parameter_meta {
    bank: ""
  }
}