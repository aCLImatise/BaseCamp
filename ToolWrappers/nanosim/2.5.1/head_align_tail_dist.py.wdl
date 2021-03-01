version 1.0

task HeadAlignTailDistpy {
  command <<<
    head_align_tail_dist_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}