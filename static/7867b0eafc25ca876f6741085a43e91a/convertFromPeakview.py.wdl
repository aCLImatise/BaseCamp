version 1.0

task ConvertFromPeakviewpy {
  command <<<
    convertFromPeakview_py
  >>>
  output {
    File out_stdout = stdout()
  }
}