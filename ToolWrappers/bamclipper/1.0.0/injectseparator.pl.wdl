version 1.0

task Injectseparatorpl {
  command <<<
    injectseparator_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}