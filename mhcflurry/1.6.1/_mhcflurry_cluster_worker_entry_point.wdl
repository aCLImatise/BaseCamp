version 1.0

task _mhcflurryClusterWorkerEntryPoint {
  input {
    String entry
    String point
    String for
    String cluster
    String workers
  }
  command <<<
    _mhcflurry-cluster-worker-entry-point \
      ~{entry} \
      ~{point} \
      ~{for} \
      ~{cluster} \
      ~{workers}
  >>>
  parameter_meta {
    entry: ""
    point: ""
    for: ""
    cluster: ""
    workers: ""
  }
}