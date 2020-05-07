version 1.0

task RtgHelpPedstats {
  input {
    String delimiterDelimiter
    String dotDot
    Boolean familiesFamilies
    Boolean femaleFemaleIds
    Boolean founderFounderIds
    Boolean maleMaleIds
    Boolean maternalMaternalIds
    Boolean paternalPaternalIds
    Boolean primaryPrimaryIds
    Boolean simpleSimpleDot
    File? fileFile
  }
  command <<<
    rtg help pedstats \
      ~{fileFile} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(dotDot) then ("--dot " +  '"' + dotDot + '"') else ""} \
      ~{true="--families" false="" familiesFamilies} \
      ~{true="--female-ids" false="" femaleFemaleIds} \
      ~{true="--founder-ids" false="" founderFounderIds} \
      ~{true="--male-ids" false="" maleMaleIds} \
      ~{true="--maternal-ids" false="" maternalMaternalIds} \
      ~{true="--paternal-ids" false="" paternalPaternalIds} \
      ~{true="--primary-ids" false="" primaryPrimaryIds} \
      ~{true="--simple-dot" false="" simpleSimpleDot}
  >>>
}