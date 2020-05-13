version 1.0

task RbtCollapseReadsToFragmentsFastq {
  input {
    String readsReads
    String umiUmi
    Boolean lL
    Boolean dD
    Boolean dD
    Boolean umiUmiOnReverse
    Boolean umiUmiOnReverse
    Boolean verboseVerboseReadNames
    String insertInsertSize
    Int maxMaxSeqDist
    Int maxMaxUmiDist
    String stdStdDev
    String umiUmiLen
    String? flagsFlags
    String? optionsOptions
    String? fq1Fq1
    String? fq2Fq2
    String? consensusConsensusFq1
    String? consensusConsensusFq2
    String? consensusConsensusFq3
  }
  command <<<
    rbt collapse-reads-to-fragments fastq \
      ~{flagsFlags} \
      ~{if defined(readsReads) then ("- Reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(umiUmi) then ("- UMI " +  '"' + umiUmi + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-d" false="" dD} \
      ~{true="-D" false="" dD} \
      ~{true="--umi-on-reverse" false="" umiUmiOnReverse} \
      ~{true="--umi-on-reverse" false="" umiUmiOnReverse} \
      ~{true="--verbose-read-names" false="" verboseVerboseReadNames} \
      ~{if defined(insertInsertSize) then ("--insert-size " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(maxMaxSeqDist) then ("--max-seq-dist " +  '"' + maxMaxSeqDist + '"') else ""} \
      ~{if defined(maxMaxUmiDist) then ("--max-umi-dist " +  '"' + maxMaxUmiDist + '"') else ""} \
      ~{if defined(stdStdDev) then ("--std-dev " +  '"' + stdStdDev + '"') else ""} \
      ~{if defined(umiUmiLen) then ("--umi-len " +  '"' + umiUmiLen + '"') else ""} \
      ~{optionsOptions} \
      ~{fq1Fq1} \
      ~{fq2Fq2} \
      ~{consensusConsensusFq1} \
      ~{consensusConsensusFq2} \
      ~{consensusConsensusFq3}
  >>>
}