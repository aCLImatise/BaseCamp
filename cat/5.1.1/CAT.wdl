version 1.0

task CAT {
  command <<<
    CAT
  >>>
  output {
    File out_stdout = stdout()
  }
}