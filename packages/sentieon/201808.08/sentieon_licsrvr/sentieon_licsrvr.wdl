version 1.0

task Sentieonlicsrvr {
  command <<<
    sentieon_licsrvr
  >>>
  output {
    File out_stdout = stdout()
  }
}