version 1.0

task UpdateSortBedMigrateCandidatesFloat128 {
  input {
    Boolean resortResortInParallelViaSlurM
  }
  command <<<
    update-sort-bed-migrate-candidates-float128 \
      ~{true="--resort-in-parallel-via-slurm" false="" resortResortInParallelViaSlurM}
  >>>
}