version 1.0

task SswLibpy {
  command <<<
    ssw_lib_py
  >>>
  output {
    File out_stdout = stdout()
  }
}