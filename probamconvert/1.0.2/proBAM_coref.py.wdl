version 1.0

task ProBAMCorefpy {
  command <<<
    proBAM_coref_py
  >>>
  output {
    File out_stdout = stdout()
  }
}