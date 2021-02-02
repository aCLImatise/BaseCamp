version 1.0

task ProBAMMzidpy {
  command <<<
    proBAM_mzid_py
  >>>
  output {
    File out_stdout = stdout()
  }
}