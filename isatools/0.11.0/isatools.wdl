version 1.0

task Isatools {
  command <<<
    isatools
  >>>
  output {
    File out_stdout = stdout()
  }
}