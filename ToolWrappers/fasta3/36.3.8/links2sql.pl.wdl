version 1.0

task Links2sqlpl {
  command <<<
    links2sql_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}