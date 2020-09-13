version 1.0

task CmdInpy {
  command <<<
    CmdIn_py
  >>>
  output {
    File out_stdout = stdout()
  }
}