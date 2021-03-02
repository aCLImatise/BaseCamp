version 1.0

task ClstrRenumberpl {
  command <<<
    clstr_renumber_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}