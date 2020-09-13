version 1.0

task RemoveRCpy {
  command <<<
    removeRC_py
  >>>
  output {
    File out_stdout = stdout()
  }
}