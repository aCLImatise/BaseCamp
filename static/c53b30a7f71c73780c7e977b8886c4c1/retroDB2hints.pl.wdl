version 1.0

task RetroDB2hintspl {
  command <<<
    retroDB2hints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}