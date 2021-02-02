version 1.0

task Pyatac {
  command <<<
    pyatac
  >>>
  output {
    File out_stdout = stdout()
  }
}