version 1.0

task Hmmpair {
  command <<<
    hmmpair
  >>>
  output {
    File out_stdout = stdout()
  }
}