version 1.0

task SqStoreDumpFASTQ {
  input {
    String oO
    Boolean fastFastQ
    Boolean fastFastA
    Boolean noNoLibname
    Boolean noNoReadName
    Boolean reverseReverse
    String lL
    String rR
    Boolean rawRaw
    Boolean correctedCorrected
    Boolean trimmedTrimmed
    Boolean compressedCompressed
    Boolean normalNormal
  }
  command <<<
    sqStoreDumpFASTQ \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-nolibname" false="" noNoLibname} \
      ~{true="-noreadname" false="" noNoReadName} \
      ~{true="-reverse" false="" reverseReverse} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-corrected" false="" correctedCorrected} \
      ~{true="-trimmed" false="" trimmedTrimmed} \
      ~{true="-compressed" false="" compressedCompressed} \
      ~{true="-normal" false="" normalNormal}
  >>>
}