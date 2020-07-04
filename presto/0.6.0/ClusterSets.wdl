version 1.0

task ClusterSets.pyCLUSTER {
  input {
    String cluster_sets_do_tpy
  }
  command <<<
    ClusterSets.py CLUSTER \
      ~{cluster_sets_do_tpy}
  >>>
  parameter_meta {
    cluster_sets_do_tpy: ""
  }
}