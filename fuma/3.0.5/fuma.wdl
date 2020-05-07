version 1.0

task Fuma {
  input {
    Boolean formatsFormats
    String matchingMatchingMethod
    Boolean strandStrandSpecificMatching
    Boolean noNoStrandSpecificMatching
    Boolean acceptAcceptOrDonorOrderSpecificMatching
    Boolean noNoAcceptOrDonorOrderSpecificMatching
    Boolean verboseVerbose
    Boolean aA
    Array[String]+ addAddSample
    Boolean lL
    String formatFormat
    String longLongGeneSize
    String outputOutput
  }
  command <<<
    fuma \
      ~{true="--formats" false="" formatsFormats} \
      ~{if defined(matchingMatchingMethod) then ("--matching-method " +  '"' + matchingMatchingMethod + '"') else ""} \
      ~{true="--strand-specific-matching" false="" strandStrandSpecificMatching} \
      ~{true="--no-strand-specific-matching" false="" noNoStrandSpecificMatching} \
      ~{true="--acceptor-donor-order-specific-matching" false="" acceptAcceptOrDonorOrderSpecificMatching} \
      ~{true="--no-acceptor-donor-order-specific-matching" false="" noNoAcceptOrDonorOrderSpecificMatching} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-a" false="" aA} \
      ~{if defined(addAddSample) then ("--add-sample " +  '"' + addAddSample + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(longLongGeneSize) then ("--long-gene-size " +  '"' + longLongGeneSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}