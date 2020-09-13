version 1.0

task Routinespm {
  command <<<
    routines_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}