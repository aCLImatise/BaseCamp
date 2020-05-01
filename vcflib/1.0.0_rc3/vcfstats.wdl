version 1.0

task Vcfstats {
  input {
    Boolean regionRegion
    Boolean addAddInfo
    Boolean addAddType
    Boolean noNoLengthFrequency
    String matchMatchScore
    String mismatchMismatchScore
    String gapGapOpenPenalty
    String gapGapExtendPenalty
  }
  command <<<
    vcfstats \
      ~{true="--region" false="" regionRegion} \
      ~{true="--add-info" false="" addAddInfo} \
      ~{true="--add-type" false="" addAddType} \
      ~{true="--no-length-frequency" false="" noNoLengthFrequency} \
      ~{if defined(matchMatchScore) then ("--match-score " +  '"' + matchMatchScore + '"') else ""} \
      ~{if defined(mismatchMismatchScore) then ("--mismatch-score " +  '"' + mismatchMismatchScore + '"') else ""} \
      ~{if defined(gapGapOpenPenalty) then ("--gap-open-penalty " +  '"' + gapGapOpenPenalty + '"') else ""} \
      ~{if defined(gapGapExtendPenalty) then ("--gap-extend-penalty " +  '"' + gapGapExtendPenalty + '"') else ""}
  >>>
}