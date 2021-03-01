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
    docker: "None"
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