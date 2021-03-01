version 1.0

task Routinespm {
  command <<<
    routines_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}