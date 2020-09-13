version 1.0

task Pyqi {
  command <<<
    pyqi
  >>>
  output {
    File out_stdout = stdout()
  }
}