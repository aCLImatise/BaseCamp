version 1.0

task Structure {
  command <<<
    structure
  >>>
  output {
    File out_stdout = stdout()
  }
}