version 1.0

task CameoSearch {
  command <<<
    cameo search
  >>>
  output {
    File out_stdout = stdout()
  }
}