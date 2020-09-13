version 1.0

task Bugzscoutpy {
  command <<<
    bugzscout_py
  >>>
  output {
    File out_stdout = stdout()
  }
}