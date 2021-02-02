version 1.0

task ParseAlignment {
  command <<<
    parseAlignment
  >>>
  output {
    File out_stdout = stdout()
  }
}