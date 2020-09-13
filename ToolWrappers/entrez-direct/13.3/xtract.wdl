version 1.0

task Xtract {
  command <<<
    xtract
  >>>
  output {
    File out_stdout = stdout()
  }
}