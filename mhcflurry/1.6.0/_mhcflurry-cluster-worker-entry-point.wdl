version 1.0

task _mhcflurryClusterWorkerEntryPoint {
  input {
    String? entryEntry
    String? pointPoint
    String? forFor
    String? clusterCluster
    String? workersWorkers
  }
  command <<<
    _mhcflurry-cluster-worker-entry-point \
      ~{entryEntry} \
      ~{pointPoint} \
      ~{forFor} \
      ~{clusterCluster} \
      ~{workersWorkers}
  >>>
}