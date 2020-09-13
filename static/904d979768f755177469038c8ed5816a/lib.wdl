version 1.0

task Lib {
  command <<<
    lib
  >>>
  output {
    File out_stdout = stdout()
  }
}