version 1.0

task Makelogo {
  command <<<
    makelogo
  >>>
  output {
    File out_stdout = stdout()
  }
}