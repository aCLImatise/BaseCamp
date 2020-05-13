version 1.0

task GanonUpdate {
  input {
    Boolean oO
    Boolean tT
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
    ganon update \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
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