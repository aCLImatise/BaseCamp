version 1.0

task Amos2sq {
  command <<<
    amos2sq
  >>>
  output {
    File out_stdout = stdout()
  }
}