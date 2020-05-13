version 1.0

task AgatSpKrakenAssessLiftover.pl {
  input {
    Boolean gffGff
    String thresholdThreshold
    String verboseVerbose
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? agatAgatSpKrakenAssessLiftCoverage
  }
  command <<<
    agat_sp_kraken_assess_liftover.pl \
      ~{agatAgatSpKrakenAssessLiftCoverage} \
      ~{true="-gff" false="" gffGff} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}