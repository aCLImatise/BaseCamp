version 1.0

task ShrinkDbpl {
  command <<<
    shrink_db_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}