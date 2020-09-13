version 1.0

task Pecheckwrapperpy {
  command <<<
    pecheck_wrapper_py
  >>>
  output {
    File out_stdout = stdout()
  }
}