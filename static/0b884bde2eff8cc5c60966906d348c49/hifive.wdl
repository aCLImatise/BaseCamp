version 1.0

task Hifive {
  command <<<
    hifive
  >>>
  output {
    File out_stdout = stdout()
  }
}