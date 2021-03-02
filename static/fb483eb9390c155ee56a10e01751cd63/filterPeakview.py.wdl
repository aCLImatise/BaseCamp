version 1.0

task FilterPeakviewpy {
  command <<<
    filterPeakview_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}