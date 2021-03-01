version 1.0

task ClstrSelectReppl {
  command <<<
    clstr_select_rep_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}