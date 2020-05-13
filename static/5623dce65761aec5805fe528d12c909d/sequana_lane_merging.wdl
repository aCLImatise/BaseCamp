version 1.0

task SequanaLaneMerging {
  input {
    Boolean dryDryRun
  }
  command <<<
    sequana_lane_merging \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}