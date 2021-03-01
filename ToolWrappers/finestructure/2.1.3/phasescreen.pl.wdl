version 1.0

task Phasescreenpl {
  command <<<
    phasescreen_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}