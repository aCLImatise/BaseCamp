version 1.0

task FixBarpl {
  command <<<
    fix_bar_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}