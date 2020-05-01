version 1.0

task HtseqQa {
  input {
    String typeType
    String outfileOutfile
    String readReadLength
    String gammaGamma
    Boolean noNoSplit
    Int maxMaxQual
    Boolean primaryPrimaryOnly
    Int maxMaxRecords
    String? readReadFilename
  }
  command <<<
    htseq-qa \
      ~{readReadFilename} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(readReadLength) then ("--readlength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(gammaGamma) then ("--gamma " +  '"' + gammaGamma + '"') else ""} \
      ~{true="--nosplit" false="" noNoSplit} \
      ~{if defined(maxMaxQual) then ("--maxqual " +  '"' + maxMaxQual + '"') else ""} \
      ~{true="--primary-only" false="" primaryPrimaryOnly} \
      ~{if defined(maxMaxRecords) then ("--max-records " +  '"' + maxMaxRecords + '"') else ""}
  >>>
}