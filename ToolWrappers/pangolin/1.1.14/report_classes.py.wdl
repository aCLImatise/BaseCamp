version 1.0

task ReportClassespy {
  command <<<
    report_classes_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}