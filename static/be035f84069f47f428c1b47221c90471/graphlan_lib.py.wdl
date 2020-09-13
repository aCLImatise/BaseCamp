version 1.0

task GraphlanLibpy {
  command <<<
    graphlan_lib_py
  >>>
  output {
    File out_stdout = stdout()
  }
}