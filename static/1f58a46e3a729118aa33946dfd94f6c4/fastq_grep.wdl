version 1.0

task FastqGrep {
  input {
    Boolean idId
    Boolean invertInvertMatch
    File mismatchesMismatches
    Boolean countCount
    Boolean trimTrimAfter
    Boolean trimTrimBefore
    Boolean trimTrimMatch
  }
  command <<<
    fastq-grep \
      ~{true="--id" false="" idId} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{true="--count" false="" countCount} \
      ~{true="--trim_after" false="" trimTrimAfter} \
      ~{true="--trim_before" false="" trimTrimBefore} \
      ~{true="--trim_match" false="" trimTrimMatch}
  >>>
}