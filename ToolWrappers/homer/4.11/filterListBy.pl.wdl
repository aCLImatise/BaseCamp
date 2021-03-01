version 1.0

task FilterListBypl {
  command <<<
    filterListBy_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}