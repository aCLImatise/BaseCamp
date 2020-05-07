version 1.0

task ReadSeqRandomSample {
  input {
    String numNumSelection
    String subregionSubregionLength
  }
  command <<<
    ReadSeq random-sample \
      ~{if defined(numNumSelection) then ("--num-selection " +  '"' + numNumSelection + '"') else ""} \
      ~{if defined(subregionSubregionLength) then ("--subregion_length " +  '"' + subregionSubregionLength + '"') else ""}
  >>>
}