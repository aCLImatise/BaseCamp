version 1.0

task Spacepharer {
  command <<<
    spacepharer
  >>>
  output {
    File out_stdout = stdout()
  }
}