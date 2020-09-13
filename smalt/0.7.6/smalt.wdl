version 1.0

task Smalt {
  command <<<
    smalt
  >>>
  output {
    File out_stdout = stdout()
  }
}