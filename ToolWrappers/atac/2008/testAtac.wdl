version 1.0

task TestAtac {
  command <<<
    testAtac
  >>>
  output {
    File out_stdout = stdout()
  }
}