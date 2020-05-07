version 1.0

task KmerMask {
  input {
    Int lL
    Boolean cleanerCleaner
    Boolean dirtierDirtier
    Boolean discardDiscard
    Boolean unlinkUnlink
    Boolean noNoMasking
    Boolean oO
    String hH
    String tT
    Boolean vV
  }
  command <<<
    kmer-mask \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-cleaner" false="" cleanerCleaner} \
      ~{true="-dirtier" false="" dirtierDirtier} \
      ~{true="-discard" false="" discardDiscard} \
      ~{true="-unlink" false="" unlinkUnlink} \
      ~{true="-nomasking" false="" noNoMasking} \
      ~{true="-o" false="" oO} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}