version 1.0

task Wisestork {
  command <<<
    wisestork
  >>>
  output {
    File out_stdout = stdout()
  }
}