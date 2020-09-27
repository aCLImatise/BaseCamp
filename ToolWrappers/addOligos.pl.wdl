version 1.0

task AddOligospl {
  command <<<
    addOligos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}