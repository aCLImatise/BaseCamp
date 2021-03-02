version 1.0

task ClusterSetspyCLUSTER {
  input {
    String cluster_sets_do_tpy
  }
  command <<<
    ClusterSets_py CLUSTER \
      ~{cluster_sets_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cluster_sets_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}