version 1.0

task Filterfa {
  input {
    Boolean pairedPaired
    Boolean mergeMerge
    String? tmpTmpFa
    String? outOutFa
  }
  command <<<
    filterfa \
      ~{tmpTmpFa} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--merge" false="" mergeMerge} \
      ~{outOutFa}
  >>>
}