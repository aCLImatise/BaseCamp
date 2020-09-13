version 1.0

task Unbugpl {
  command <<<
    unbug_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}