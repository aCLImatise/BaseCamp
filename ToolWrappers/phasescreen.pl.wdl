version 1.0

task Phasescreenpl {
  command <<<
    phasescreen_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}