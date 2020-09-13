version 1.0

task Bamfixmateinformation {
  command <<<
    bamfixmateinformation
  >>>
  output {
    File out_stdout = stdout()
  }
}