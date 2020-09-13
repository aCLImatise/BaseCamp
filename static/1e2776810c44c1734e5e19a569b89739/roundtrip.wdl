version 1.0

task Roundtrip {
  command <<<
    roundtrip
  >>>
  output {
    File out_stdout = stdout()
  }
}