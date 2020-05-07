version 1.0

task OverlapPartition {
  input {
    String? optsOpts
  }
  command <<<
    overlap_partition \
      ~{optsOpts}
  >>>
}