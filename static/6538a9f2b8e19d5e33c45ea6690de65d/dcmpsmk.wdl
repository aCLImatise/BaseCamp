version 1.0

task Dcmpsmk {
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
    Boolean vV
    Boolean cC
    Boolean oO
    Boolean sS
    Boolean pP
    Boolean locationLocationNone
    Boolean locationLocationNetwork
    Boolean locationLocationMedia
    String? dcmDcmFileIn
    String? dcmDcmFileOut
  }
  command <<<
    dcmpsmk \
      ~{dcmDcmFileIn} \
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
      ~{true="--read-xfer-implicit" false="" readReadXferImplicit} \
      ~{true="-V" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS} \
      ~{true="-p" false="" pP} \
      ~{true="--location-none" false="" locationLocationNone} \
      ~{true="--location-network" false="" locationLocationNetwork} \
      ~{true="--location-media" false="" locationLocationMedia} \
      ~{dcmDcmFileOut}
  >>>
}