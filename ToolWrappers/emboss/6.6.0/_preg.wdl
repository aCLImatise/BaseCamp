version 1.0

task Preg {
  command <<<
    _preg
  >>>
  output {
    File out_stdout = stdout()
  }
}