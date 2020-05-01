version 1.0

task UpdateSortBedMigrateCandidatesMegarow {
  input {
    Boolean resortResortInParallelViaSlurM
  }
  command <<<
    update-sort-bed-migrate-candidates-megarow \
      ~{true="--resort-in-parallel-via-slurm" false="" resortResortInParallelViaSlurM}
  >>>
}