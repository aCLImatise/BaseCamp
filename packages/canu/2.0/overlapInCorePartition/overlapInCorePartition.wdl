version 1.0

task OverlapInCorePartition {
  input {
    String? opts
  }
  command <<<
    overlapInCorePartition \
      ~{opts}
  >>>
  parameter_meta {
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}