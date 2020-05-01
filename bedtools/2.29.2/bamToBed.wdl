version 1.0

task BamToBed {
  input {
    Boolean edEd
    Boolean tagTag
    Boolean colorColor
    Boolean cigarCigar
    String? bedBedTools
    String? bamBamToBed
    String? optionsOptions
  }
  command <<<
    bamToBed \
      ~{bedBedTools} \
      ~{true="-ed" false="" edEd} \
      ~{true="-tag" false="" tagTag} \
      ~{true="-color" false="" colorColor} \
      ~{true="-cigar" false="" cigarCigar} \
      ~{bamBamToBed} \
      ~{optionsOptions}
  >>>
}