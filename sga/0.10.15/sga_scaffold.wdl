version 1.0

task SgaScaffold {
  input {
    Boolean verboseVerbose
    File pePe
    File mateMatePair
    String minMinLength
    File asAsQgFile
    File aAStatisticFile
    Float uniqueUniqueAStat
    Float minMinCopyNumber
    String maxMaxSvSize
    File outfileOutfile
    Boolean removeRemoveConflicting
    Boolean strictStrict
  }
  command <<<
    sga scaffold \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(pePe) then ("--pe " +  '"' + pePe + '"') else ""} \
      ~{if defined(mateMatePair) then ("--mate-pair " +  '"' + mateMatePair + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(asAsQgFile) then ("--asqg-file " +  '"' + asAsQgFile + '"') else ""} \
      ~{if defined(aAStatisticFile) then ("--astatistic-file " +  '"' + aAStatisticFile + '"') else ""} \
      ~{if defined(uniqueUniqueAStat) then ("--unique-astat " +  '"' + uniqueUniqueAStat + '"') else ""} \
      ~{if defined(minMinCopyNumber) then ("--min-copy-number " +  '"' + minMinCopyNumber + '"') else ""} \
      ~{if defined(maxMaxSvSize) then ("--max-sv-size " +  '"' + maxMaxSvSize + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--remove-conflicting" false="" removeRemoveConflicting} \
      ~{true="--strict" false="" strictStrict}
  >>>
}