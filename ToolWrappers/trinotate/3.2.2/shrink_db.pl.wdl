version 1.0

task ShrinkDbpl {
  command <<<
    shrink_db_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}