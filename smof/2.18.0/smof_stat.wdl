version 1.0

task SmofStat {
  input {
    String delimiterDelimiter
    Boolean byBySeq
    Boolean caseCaseSensitive
    Boolean countCountLower
    Boolean countsCounts
    Boolean typeType
    Boolean lengthLength
    Boolean proportionProportion
    Boolean aaAaProfile
    Boolean histHist
    Boolean logLogHist
    String? inputInput
  }
  command <<<
    smof stat \
      ~{inputInput} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{true="--byseq" false="" byBySeq} \
      ~{true="--case-sensitive" false="" caseCaseSensitive} \
      ~{true="--count-lower" false="" countCountLower} \
      ~{true="--counts" false="" countsCounts} \
      ~{true="--type" false="" typeType} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--proportion" false="" proportionProportion} \
      ~{true="--aa-profile" false="" aaAaProfile} \
      ~{true="--hist" false="" histHist} \
      ~{true="--log-hist" false="" logLogHist}
  >>>
}