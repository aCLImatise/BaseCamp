version 1.0

task ClstrReppl {
  command <<<
    clstr_rep_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}