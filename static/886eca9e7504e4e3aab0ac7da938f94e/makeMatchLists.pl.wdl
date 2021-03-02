version 1.0

task MakeMatchListspl {
  command <<<
    makeMatchLists_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}