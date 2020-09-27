version 1.0

task Tagrecon {
  command <<<
    tagrecon
  >>>
  output {
    File out_stdout = stdout()
  }
}