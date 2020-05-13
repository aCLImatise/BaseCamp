version 1.0

task HifiveHicCombineReplicatesReplicate1 {
  input {
    Boolean quietQuiet
    String? replicateReplicate1
    String? replicateReplicate2
    String? outputOutput
  }
  command <<<
    hifive hic-combine-replicates replicate1 \
      ~{replicateReplicate1} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{replicateReplicate2} \
      ~{outputOutput}
  >>>
}