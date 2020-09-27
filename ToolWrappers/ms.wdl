version 1.0

task Ms {
  command <<<
    ms
  >>>
  output {
    File out_stdout = stdout()
  }
}