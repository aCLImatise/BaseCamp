version 1.0

task CreateRepeatLandscapepl {
  command <<<
    createRepeatLandscape_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}