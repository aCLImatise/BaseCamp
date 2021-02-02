version 1.0

task Funcs {
  command <<<
    funcs
  >>>
  output {
    File out_stdout = stdout()
  }
}