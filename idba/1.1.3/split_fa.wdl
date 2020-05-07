version 1.0

task SplitFa {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    Boolean filterFilter
  }
  command <<<
    split_fa \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter" false="" filterFilter}
  >>>
}