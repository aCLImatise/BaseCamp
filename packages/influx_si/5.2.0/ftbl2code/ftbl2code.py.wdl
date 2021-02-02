version 1.0

task Ftbl2codepy {
  command <<<
    ftbl2code_py
  >>>
  output {
    File out_stdout = stdout()
  }
}