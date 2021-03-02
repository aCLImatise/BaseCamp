version 1.0

task ClstrSelectpl {
  command <<<
    clstr_select_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}