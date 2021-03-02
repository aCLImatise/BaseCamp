version 1.0

task HeadAlignTailDistpy {
  command <<<
    head_align_tail_dist_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanosim:2.6.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}