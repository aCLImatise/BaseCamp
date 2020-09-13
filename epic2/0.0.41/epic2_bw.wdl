version 1.0

task Epic2bw {
  command <<<
    epic2_bw
  >>>
  output {
    File out_stdout = stdout()
  }
}