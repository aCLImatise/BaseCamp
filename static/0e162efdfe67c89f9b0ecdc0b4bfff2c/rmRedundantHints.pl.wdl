version 1.0

task RmRedundantHintspl {
  command <<<
    rmRedundantHints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}