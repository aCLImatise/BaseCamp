version 1.0

task SimpleStatsPostCollapsepy {
  input {
    String input_prefix
  }
  command <<<
    simple_stats_post_collapse_py \
      ~{input_prefix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    input_prefix: "Input prefix, ex: hq.5merge.collapsed"
  }
  output {
    File out_stdout = stdout()
  }
}