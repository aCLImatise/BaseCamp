version 1.0

task SplitFq {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    Boolean filterFilter
  }
  command <<<
    split_fq \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter" false="" filterFilter}
  >>>
}