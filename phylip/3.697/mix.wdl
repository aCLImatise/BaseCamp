version 1.0

task Mix {
  command <<<
    mix
  >>>
  output {
    File out_stdout = stdout()
  }
}