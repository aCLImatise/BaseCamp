version 1.0

task PeakPiepyc {
  command <<<
    peak_pie_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}