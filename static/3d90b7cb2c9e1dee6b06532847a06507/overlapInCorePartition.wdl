version 1.0

task OverlapInCorePartition {
  input {
    String? opts
  }
  command <<<
    overlapInCorePartition \
      ~{opts}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}