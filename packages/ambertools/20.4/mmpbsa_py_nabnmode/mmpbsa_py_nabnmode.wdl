version 1.0

task MmpbsaPyNabnmode {
  command <<<
    mmpbsa_py_nabnmode
  >>>
  output {
    File out_stdout = stdout()
  }
}