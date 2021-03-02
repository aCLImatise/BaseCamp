version 1.0

task PeakPiepyc {
  command <<<
    peak_pie_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}