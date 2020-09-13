version 1.0

task RandRemoveBackgroundpl {
  command <<<
    randRemoveBackground_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}