version 1.0

task MmpbsaPyEnergy {
  command <<<
    mmpbsa_py_energy
  >>>
  output {
    File out_stdout = stdout()
  }
}