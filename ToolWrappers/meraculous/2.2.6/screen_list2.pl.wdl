version 1.0

task ScreenList2pl {
  command <<<
    screen_list2_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}