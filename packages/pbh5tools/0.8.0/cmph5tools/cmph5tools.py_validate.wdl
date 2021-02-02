version 1.0

task Cmph5toolspyValidate {
  command <<<
    cmph5tools_py validate
  >>>
  output {
    File out_stdout = stdout()
  }
}