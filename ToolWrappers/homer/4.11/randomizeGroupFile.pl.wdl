version 1.0

task RandomizeGroupFilepl {
  command <<<
    randomizeGroupFile_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}