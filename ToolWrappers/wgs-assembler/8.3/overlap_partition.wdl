version 1.0

task OverlapPartition {
  input {
    String? opts
  }
  command <<<
    overlap_partition \
      ~{opts}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}