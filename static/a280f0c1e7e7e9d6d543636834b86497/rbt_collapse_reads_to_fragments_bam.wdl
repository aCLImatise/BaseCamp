version 1.0

task RbtCollapseReadsToFragmentsBam {
  input {
    String readsReads
    String readsReads
    Boolean verboseVerboseReadNames
    Int maxMaxSeqDist
    String? flagsFlags
    String? optionsOptions
    String? bamBam
    String? consensusConsensusBam
  }
  command <<<
    rbt collapse-reads-to-fragments bam \
      ~{flagsFlags} \
      ~{if defined(readsReads) then ("- Reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(readsReads) then ("- Reads " +  '"' + readsReads + '"') else ""} \
      ~{true="--verbose-read-names" false="" verboseVerboseReadNames} \
      ~{if defined(maxMaxSeqDist) then ("--max-seq-dist " +  '"' + maxMaxSeqDist + '"') else ""} \
      ~{optionsOptions} \
      ~{bamBam} \
      ~{consensusConsensusBam}
  >>>
}