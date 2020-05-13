version 1.0

task CryptoTyper {
  input {
    Boolean verboseVerbose
    String inputInput
    String markerMarker
    String seqtypeSeqtype
    String forwardForwardPrimerName
    String reverseReversePrimerName
    String outputOutputPrefix
  }
  command <<<
    crypto_typer \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(markerMarker) then ("--marker " +  '"' + markerMarker + '"') else ""} \
      ~{if defined(seqtypeSeqtype) then ("--seqtype " +  '"' + seqtypeSeqtype + '"') else ""} \
      ~{if defined(forwardForwardPrimerName) then ("--forwardprimername " +  '"' + forwardForwardPrimerName + '"') else ""} \
      ~{if defined(reverseReversePrimerName) then ("--reverseprimername " +  '"' + reverseReversePrimerName + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--outputprefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}