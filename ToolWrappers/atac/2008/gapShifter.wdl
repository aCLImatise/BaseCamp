version 1.0

task GapShifter {
  command <<<
    gapShifter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}