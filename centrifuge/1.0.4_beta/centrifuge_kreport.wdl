version 1.0

task CentrifugeKreport {
  input {
    String xX
    Boolean noNoLca
    Boolean showShowZeros
    Boolean isIsCountTable
    String minMinScore
    Int minMinLength
  }
  command <<<
    centrifuge-kreport \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="--no-lca" false="" noNoLca} \
      ~{true="--show-zeros" false="" showShowZeros} \
      ~{true="--is-count-table" false="" isIsCountTable} \
      ~{if defined(minMinScore) then ("--min-score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""}
  >>>
}