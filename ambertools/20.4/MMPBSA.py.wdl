version 1.0

task MMPBSApy {
  command <<<
    MMPBSA_py
  >>>
  output {
    File out_stdout = stdout()
  }
}