version 1.0

task AktRelatives {
  input {
    Boolean kmKmIn
    Boolean itsIts
    Boolean graphGraphOut
    Boolean prefixPrefix
  }
  command <<<
    akt relatives \
      ~{true="--kmin" false="" kmKmIn} \
      ~{true="--its" false="" itsIts} \
      ~{true="--graphout" false="" graphGraphOut} \
      ~{true="--prefix" false="" prefixPrefix}
  >>>
}