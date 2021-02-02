version 1.0

task OboToTabpl {
  command <<<
    obo_to_tab_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}