version 1.0

task Frestml {
  input {
    Boolean weightsWeights
    Boolean nNJumble
    Boolean siteSiteLength
  }
  command <<<
    frestml \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-njumble" false="" nNJumble} \
      ~{true="-sitelength" false="" siteSiteLength}
  >>>
}