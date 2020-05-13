version 1.0

task TEsorter {
  input {
    String hmmHmmDatabase
    String seqSeqType
    String prefixPrefix
    Boolean forceForceWriteHmmsCan
    String processorsProcessors
    String tmpTmpDir
    Int minMinCoverage
    Int maxMaxEvalue
    Boolean disableDisablePass2
    String pass2Pass2Rule
    Boolean noNoLibrary
    Boolean noNoReverse
    Boolean noNoCleanup
    String? sequenceSequence
  }
  command <<<
    TEsorter \
      ~{sequenceSequence} \
      ~{if defined(hmmHmmDatabase) then ("--hmm-database " +  '"' + hmmHmmDatabase + '"') else ""} \
      ~{if defined(seqSeqType) then ("--seq-type " +  '"' + seqSeqType + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--force-write-hmmscan" false="" forceForceWriteHmmsCan} \
      ~{if defined(processorsProcessors) then ("--processors " +  '"' + processorsProcessors + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(maxMaxEvalue) then ("--max-evalue " +  '"' + maxMaxEvalue + '"') else ""} \
      ~{true="--disable-pass2" false="" disableDisablePass2} \
      ~{if defined(pass2Pass2Rule) then ("--pass2-rule " +  '"' + pass2Pass2Rule + '"') else ""} \
      ~{true="--no-library" false="" noNoLibrary} \
      ~{true="--no-reverse" false="" noNoReverse} \
      ~{true="--no-cleanup" false="" noNoCleanup}
  >>>
}