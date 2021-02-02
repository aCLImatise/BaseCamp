version 1.0

task AddMissingMatespl {
  command <<<
    add_missing_mates_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}