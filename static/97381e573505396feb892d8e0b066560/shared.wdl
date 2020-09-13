version 1.0

task Shared {
  command <<<
    shared
  >>>
  output {
    File out_stdout = stdout()
  }
}