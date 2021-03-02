version 1.0

task FilterTranspy {
  command <<<
    filter_trans_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}