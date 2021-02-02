version 1.0

task Ftbl2cumoAbpy {
  command <<<
    ftbl2cumoAb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}