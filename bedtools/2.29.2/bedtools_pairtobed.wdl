version 1.0

task BedtoolsPairtobed {
  input {
    Boolean aABam
    Boolean ubUbAm
    Boolean bedBedPe
    Boolean edEd
    Boolean fF
    Boolean sS
    Boolean sS
    Boolean typeType
  }
  command <<<
    bedtools pairtobed \
      ~{true="-abam" false="" aABam} \
      ~{true="-ubam" false="" ubUbAm} \
      ~{true="-bedpe" false="" bedBedPe} \
      ~{true="-ed" false="" edEd} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-type" false="" typeType}
  >>>
}