version 1.0

task BedtoolsGenomecov {
  input {
    Boolean maxMax
    Boolean scaleScale
    Boolean trackTrackLine
    Boolean trackTrackOpts
  }
  command <<<
    bedtools genomecov \
      ~{true="-max" false="" maxMax} \
      ~{true="-scale" false="" scaleScale} \
      ~{true="-trackline" false="" trackTrackLine} \
      ~{true="-trackopts" false="" trackTrackOpts}
  >>>
}