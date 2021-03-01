version 1.0

task Selectsh {
  command <<<
    Select_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}