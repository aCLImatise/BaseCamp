version 1.0

task Wrapperpy {
  command <<<
    wrapper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}