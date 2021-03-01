version 1.0

task Mhcflurryclusterworkerentrypoint {
  input {
    String entry
    String point
    String for
    String cluster
    String workers
  }
  command <<<
    _mhcflurry_cluster_worker_entry_point \
      ~{entry} \
      ~{point} \
      ~{for} \
      ~{cluster} \
      ~{workers}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0"
  }
  parameter_meta {
    entry: ""
    point: ""
    for: ""
    cluster: ""
    workers: ""
  }
  output {
    File out_stdout = stdout()
  }
}