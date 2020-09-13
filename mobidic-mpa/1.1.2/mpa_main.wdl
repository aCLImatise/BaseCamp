version 1.0

task MpaMain {
  command <<<
    mpa_main
  >>>
  output {
    File out_stdout = stdout()
  }
}