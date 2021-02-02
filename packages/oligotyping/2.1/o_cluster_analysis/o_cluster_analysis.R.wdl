version 1.0

task OclusteranalysisR {
  input {
    String permute
  }
  command <<<
    o_cluster_analysis_R \
      ~{permute}
  >>>
  parameter_meta {
    permute: "Error in X11(width = 12, height = 10) : X11 module cannot be loaded"
  }
  output {
    File out_stdout = stdout()
  }
}