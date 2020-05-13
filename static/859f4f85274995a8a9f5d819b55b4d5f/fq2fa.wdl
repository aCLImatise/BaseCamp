version 1.0

task Fq2fa {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    Boolean filterFilter
  }
  command <<<
    fq2fa \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--filter" false="" filterFilter}
  >>>
}