version 1.0

task Bamfilterlength {
  command <<<
    bamfilterlength
  >>>
  output {
    File out_stdout = stdout()
  }
}