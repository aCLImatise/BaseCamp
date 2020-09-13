version 1.0

task FcOvlpFilterpy {
  command <<<
    fc_ovlp_filter_py
  >>>
  output {
    File out_stdout = stdout()
  }
}