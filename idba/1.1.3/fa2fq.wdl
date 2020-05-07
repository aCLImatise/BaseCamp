version 1.0

task Fa2fq {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    Boolean filterFilter
  }
  command <<<
    fa2fq \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter" false="" filterFilter}
  >>>
}