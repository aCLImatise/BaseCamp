version 1.0

task FilterReadConservation {
  input {
    String inputInput
    String discardDiscard
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean modifyModify
    String asAsDev
    Int maxMaxTaxA
  }
  command <<<
    filter_read_conservation \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--modify" false="" modifyModify} \
      ~{if defined(asAsDev) then ("--as_dev " +  '"' + asAsDev + '"') else ""} \
      ~{if defined(maxMaxTaxA) then ("--max_taxa " +  '"' + maxMaxTaxA + '"') else ""}
  >>>
}