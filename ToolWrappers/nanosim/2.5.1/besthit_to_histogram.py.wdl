version 1.0

task BesthitToHistogrampy {
  command <<<
    besthit_to_histogram_py
  >>>
  output {
    File out_stdout = stdout()
  }
}