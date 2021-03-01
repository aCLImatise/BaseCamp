version 1.0

task Joinpl {
  command <<<
    join_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}