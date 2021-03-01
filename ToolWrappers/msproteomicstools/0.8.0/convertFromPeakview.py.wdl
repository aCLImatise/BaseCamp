version 1.0

task ConvertFromPeakviewpy {
  command <<<
    convertFromPeakview_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}