version 1.0

task Pecheckwrapperpy {
  command <<<
    pecheck_wrapper_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}