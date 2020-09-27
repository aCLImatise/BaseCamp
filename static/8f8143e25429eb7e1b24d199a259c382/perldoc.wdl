version 1.0

task Perldoc {
  command <<<
    perldoc
  >>>
  output {
    File out_stdout = stdout()
  }
}