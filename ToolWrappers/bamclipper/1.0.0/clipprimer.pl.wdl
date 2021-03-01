version 1.0

task Clipprimerpl {
  command <<<
    clipprimer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}