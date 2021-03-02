version 1.0

task FindRascafEffectivepl {
  command <<<
    FindRascafEffective_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}