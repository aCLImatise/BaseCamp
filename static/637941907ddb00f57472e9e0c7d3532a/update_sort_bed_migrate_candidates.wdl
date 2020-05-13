version 1.0

task UpdateSortBedMigrateCandidates {
  input {
    Boolean resortResortInParallelViaSlurM
  }
  command <<<
    update-sort-bed-migrate-candidates \
      ~{true="--resort-in-parallel-via-slurm" false="" resortResortInParallelViaSlurM}
  >>>
}