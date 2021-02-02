version 1.0

task Pwd {
  command <<<
    pwd
  >>>
  output {
    File out_stdout = stdout()
  }
}