version 1.0

task Unbugsh {
  command <<<
    unbug_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}