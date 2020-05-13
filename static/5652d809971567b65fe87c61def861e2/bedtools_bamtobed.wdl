version 1.0

task BedtoolsBamtobed {
  input {
    Boolean edEd
    Boolean tagTag
    Boolean colorColor
    Boolean cigarCigar
    String? optionsOptions
  }
  command <<<
    bedtools bamtobed \
      ~{optionsOptions} \
      ~{true="-ed" false="" edEd} \
      ~{true="-tag" false="" tagTag} \
      ~{true="-color" false="" colorColor} \
      ~{true="-cigar" false="" cigarCigar}
  >>>
}