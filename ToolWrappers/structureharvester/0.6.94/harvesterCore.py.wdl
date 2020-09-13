version 1.0

task HarvesterCorepy {
  command <<<
    harvesterCore_py
  >>>
  output {
    File out_stdout = stdout()
  }
}