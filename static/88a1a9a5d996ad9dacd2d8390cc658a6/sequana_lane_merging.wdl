version 1.0

task SequanaLaneMerging {
  input {
    Boolean? dry_run
  }
  command <<<
    sequana_lane_merging \
      ~{true="--dry-run" false="" dry_run}
  >>>
  parameter_meta {
    dry_run: "just createt the script but do not launch them"
  }
}