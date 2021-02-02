version 1.0

task FilterPeakviewpy {
  command <<<
    filterPeakview_py
  >>>
  output {
    File out_stdout = stdout()
  }
}