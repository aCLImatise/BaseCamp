version 1.0

task Zoom2sampl {
  command <<<
    zoom2sam_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}