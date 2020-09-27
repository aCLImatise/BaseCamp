version 1.0

task LynerCluster {
  input {
    Boolean? method
  }
  command <<<
    lyner cluster \
      ~{if (method) then "--method" else ""}
  >>>
  parameter_meta {
    method: "[dbscan|k_means|mean_shift]\\n-n, --num-clusters INTEGER      The exact number of clusters to build.\\n-c, --mode-config DICT\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}