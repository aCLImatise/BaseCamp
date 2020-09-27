version 1.0

task Pycompleter {
  command <<<
    pycompleter
  >>>
  output {
    File out_stdout = stdout()
  }
}