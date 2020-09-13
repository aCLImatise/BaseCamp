version 1.0

task ScrangetclusteredpcsR {
  command <<<
    scran_get_clustered_pcs_R
  >>>
  output {
    File out_stdout = stdout()
  }
}