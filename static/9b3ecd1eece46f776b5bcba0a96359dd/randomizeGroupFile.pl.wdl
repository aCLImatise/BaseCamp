version 1.0

task RandomizeGroupFilepl {
  command <<<
    randomizeGroupFile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}