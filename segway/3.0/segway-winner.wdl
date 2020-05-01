version 1.0

task SegwayWinner {
  input {
    Boolean inputInputMaster
    Boolean paramsParams
    Boolean copyCopy
    Boolean clobberClobber
  }
  command <<<
    segway-winner \
      ~{true="--input-master" false="" inputInputMaster} \
      ~{true="--params" false="" paramsParams} \
      ~{true="--copy" false="" copyCopy} \
      ~{true="--clobber" false="" clobberClobber}
  >>>
}