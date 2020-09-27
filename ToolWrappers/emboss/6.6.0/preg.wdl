version 1.0

task Preg {
  command <<<
    preg
  >>>
  output {
    File out_stdout = stdout()
  }
}