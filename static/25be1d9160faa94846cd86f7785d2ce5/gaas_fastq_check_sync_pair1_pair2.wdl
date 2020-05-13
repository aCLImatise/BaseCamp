version 1.0

task GaasFastqCheckSyncPair1Pair2.pl {
  input {
    String inputInput
    String completeComplete
    Boolean nbNb
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fastq_check_sync_pair1_pair2.pl \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(completeComplete) then ("--complete " +  '"' + completeComplete + '"') else ""} \
      ~{true="--nb" false="" nbNb} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}