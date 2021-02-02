version 1.0

task Lefsepy {
  command <<<
    lefse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}