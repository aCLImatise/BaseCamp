version 1.0

task ClstrCutpl {
  command <<<
    clstr_cut_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}