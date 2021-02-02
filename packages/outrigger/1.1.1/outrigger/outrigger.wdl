version 1.0

task Outrigger {
  command <<<
    outrigger
  >>>
  output {
    File out_stdout = stdout()
  }
}