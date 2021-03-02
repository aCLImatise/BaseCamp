version 1.0

task ManualJan132015pdf {
  command <<<
    Manual_Jan13_2015_pdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}