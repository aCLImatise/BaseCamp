version 1.0

task CompareHLAOmixonpy {
  command <<<
    compare_HLA_Omixon_py
  >>>
  output {
    File out_stdout = stdout()
  }
}