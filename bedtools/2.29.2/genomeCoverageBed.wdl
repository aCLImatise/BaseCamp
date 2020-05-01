version 1.0

task GenomeCoverageBed {
  input {
    Boolean maxMax
    Boolean scaleScale
    Boolean trackTrackLine
    Boolean trackTrackOpts
  }
  command <<<
    genomeCoverageBed \
      ~{true="-max" false="" maxMax} \
      ~{true="-scale" false="" scaleScale} \
      ~{true="-trackline" false="" trackTrackLine} \
      ~{true="-trackopts" false="" trackTrackOpts}
  >>>
}