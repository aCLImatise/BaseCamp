version 1.0

task _frestml {
  input {
    Boolean weightsWeights
    Boolean nNJumble
    Boolean siteSiteLength
  }
  command <<<
    _frestml \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-njumble" false="" nNJumble} \
      ~{true="-sitelength" false="" siteSiteLength}
  >>>
}