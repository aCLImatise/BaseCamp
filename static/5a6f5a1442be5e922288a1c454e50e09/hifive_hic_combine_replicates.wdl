version 1.0

task HifiveHicCombineReplicates {
  input {
    Boolean qQ
  }
  command <<<
    hifive hic-combine-replicates \
      ~{true="-q" false="" qQ}
  >>>
}