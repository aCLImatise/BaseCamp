version 1.0

task MakeMetaGeneProfile.pl {
  input {
    Boolean minMin
    Boolean maxMax
    Boolean gbGbIn
    Boolean gGRatio
    Boolean binBin
    Boolean sizeSize
  }
  command <<<
    makeMetaGeneProfile.pl \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax} \
      ~{true="-gbin" false="" gbGbIn} \
      ~{true="-gRatio" false="" gGRatio} \
      ~{true="-bin" false="" binBin} \
      ~{true="-size" false="" sizeSize}
  >>>
}