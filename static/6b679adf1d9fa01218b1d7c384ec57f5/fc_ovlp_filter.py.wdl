version 1.0

task FcOvlpFilterpy {
  command <<<
    fc_ovlp_filter_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}