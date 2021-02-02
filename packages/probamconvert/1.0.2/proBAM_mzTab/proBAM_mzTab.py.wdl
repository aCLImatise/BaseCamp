version 1.0

task ProBAMMzTabpy {
  command <<<
    proBAM_mzTab_py
  >>>
  output {
    File out_stdout = stdout()
  }
}