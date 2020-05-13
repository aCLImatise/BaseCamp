version 1.0

task ReadCovPlot {
  input {
    String? bankBank
  }
  command <<<
    read-cov-plot \
      ~{bankBank}
  >>>
}