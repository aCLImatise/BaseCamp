version 1.0

task Repfindpl {
  command <<<
    repfind_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}