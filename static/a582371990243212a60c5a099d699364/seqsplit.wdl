version 1.0

task Seqsplit {
  input {
    File oO
    String fragFragFile
    String inInFormat
    String lengthLength
    String overlapOverlap
    Boolean shortShortNames
  }
  command <<<
    seqsplit \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(fragFragFile) then ("--fragfile " +  '"' + fragFragFile + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{true="--shortnames" false="" shortShortNames}
  >>>
}