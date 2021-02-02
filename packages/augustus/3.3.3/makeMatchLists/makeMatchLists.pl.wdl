version 1.0

task MakeMatchListspl {
  command <<<
    makeMatchLists_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}