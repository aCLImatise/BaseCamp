version 1.0

task MmpbsaPyEnergy {
  command <<<
    mmpbsa_py_energy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}