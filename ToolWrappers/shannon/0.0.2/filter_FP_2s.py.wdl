version 1.0

task FilterFP2spy {
  command <<<
    filter_FP_2s_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}