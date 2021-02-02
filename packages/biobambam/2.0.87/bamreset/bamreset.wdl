version 1.0

task Bamreset {
  command <<<
    bamreset
  >>>
  output {
    File out_stdout = stdout()
  }
}