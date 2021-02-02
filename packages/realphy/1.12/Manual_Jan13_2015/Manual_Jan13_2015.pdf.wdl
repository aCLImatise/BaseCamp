version 1.0

task ManualJan132015pdf {
  command <<<
    Manual_Jan13_2015_pdf
  >>>
  output {
    File out_stdout = stdout()
  }
}