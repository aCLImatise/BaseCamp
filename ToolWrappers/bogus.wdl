version 1.0

task Bogus {
  command <<<
    bogus
  >>>
  output {
    File out_stdout = stdout()
  }
}