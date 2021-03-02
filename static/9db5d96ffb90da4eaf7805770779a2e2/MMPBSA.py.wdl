version 1.0

task MMPBSApy {
  command <<<
    MMPBSA_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}