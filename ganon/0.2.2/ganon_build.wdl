version 1.0

task GanonBuild {
  input {
    Boolean rR
    Boolean kK
    Boolean nN
    Boolean fF
    Boolean mM
    Boolean lL
    Boolean tT
    Boolean fixedFixedBloomSize
    Boolean fragmentFragmentLength
    Boolean overlapOverlapLength
    Boolean seqSeqInfo
    Boolean seqSeqInfoFile
    Boolean taxTaxDumpFile
    Boolean inputInputDirectory
    Boolean inputInputExtension
    Boolean verboseVerbose
    String dbDbPrefix
    Boolean iI
  }
  command <<<
    ganon build \
      ~{true="-r" false="" rR} \
      ~{true="-k" false="" kK} \
      ~{true="-n" false="" nN} \
      ~{true="-f" false="" fF} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-t" false="" tT} \
      ~{true="--fixed-bloom-size" false="" fixedFixedBloomSize} \
      ~{true="--fragment-length" false="" fragmentFragmentLength} \
      ~{true="--overlap-length" false="" overlapOverlapLength} \
      ~{true="--seq-info" false="" seqSeqInfo} \
      ~{true="--seq-info-file" false="" seqSeqInfoFile} \
      ~{true="--taxdump-file" false="" taxTaxDumpFile} \
      ~{true="--input-directory" false="" inputInputDirectory} \
      ~{true="--input-extension" false="" inputInputExtension} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(dbDbPrefix) then ("--db-prefix " +  '"' + dbDbPrefix + '"') else ""} \
      ~{true="-i" false="" iI}
  >>>
}