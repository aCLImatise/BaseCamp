version 1.0

task CreateRepeatLandscapepl {
  command <<<
    createRepeatLandscape_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}