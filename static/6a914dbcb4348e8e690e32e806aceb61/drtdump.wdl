version 1.0

task Drtdump {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean fF
    Boolean tT
    Boolean readReadXferDetect
    Boolean readReadXferLittle
    Boolean readReadXferBig
    Boolean readReadXferImplicit
    String? drtDrtFileIn
  }
  command <<<
    drtdump \
      ~{drtDrtFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-f" false="" fF} \
      ~{true="-t" false="" tT} \
      ~{true="--read-xfer-detect" false="" readReadXferDetect} \
      ~{true="--read-xfer-little" false="" readReadXferLittle} \
      ~{true="--read-xfer-big" false="" readReadXferBig} \
      ~{true="--read-xfer-implicit" false="" readReadXferImplicit}
  >>>
}