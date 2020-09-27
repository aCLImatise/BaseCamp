version 1.0

task Seatac {
  command <<<
    seatac
  >>>
  output {
    File out_stdout = stdout()
  }
}