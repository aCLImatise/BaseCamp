version 1.0

task RmDuppl {
  command <<<
    rm_dup_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}