version 1.0

task Randomdata {
  command <<<
    randomdata
  >>>
  output {
    File out_stdout = stdout()
  }
}