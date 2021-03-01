version 1.0

task PhastconsDB2hintspl {
  command <<<
    phastconsDB2hints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}