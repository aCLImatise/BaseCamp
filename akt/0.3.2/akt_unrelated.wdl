version 1.0

task AktUnrelated {
  input {
    Boolean kmKmIn
    Boolean itsIts
  }
  command <<<
    akt unrelated \
      ~{true="--kmin" false="" kmKmIn} \
      ~{true="--its" false="" itsIts}
  >>>
}