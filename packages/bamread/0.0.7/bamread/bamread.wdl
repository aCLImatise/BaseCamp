version 1.0

task Bamread {
  command <<<
    bamread
  >>>
  output {
    File out_stdout = stdout()
  }
}