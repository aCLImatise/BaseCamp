version 1.0

task Pyfastx {
  command <<<
    pyfastx
  >>>
  output {
    File out_stdout = stdout()
  }
}