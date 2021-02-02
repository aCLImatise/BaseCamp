version 1.0

task Ctkversion {
  command <<<
    ctk_version
  >>>
  output {
    File out_stdout = stdout()
  }
}