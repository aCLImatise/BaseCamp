version 1.0

task UpdateSortBedMigrateCandidatesTypical {
  input {
    Boolean resortResortInParallelViaSlurM
  }
  command <<<
    update-sort-bed-migrate-candidates-typical \
      ~{true="--resort-in-parallel-via-slurm" false="" resortResortInParallelViaSlurM}
  >>>
}