version 1.0

task ClstrRevpl {
  command <<<
    clstr_rev_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}