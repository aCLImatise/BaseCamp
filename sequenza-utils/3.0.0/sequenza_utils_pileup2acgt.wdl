version 1.0

task SequenzaUtilsPileup2acgt {
  input {
    String mMPileUp
    String outputOutput
    String nN
    String qQLimit
    Boolean noNoEnd
    Boolean noNoStart
    String qQFormat
  }
  command <<<
    sequenza-utils pileup2acgt \
      ~{if defined(mMPileUp) then ("--mpileup " +  '"' + mMPileUp + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(qQLimit) then ("--qlimit " +  '"' + qQLimit + '"') else ""} \
      ~{true="--no-end" false="" noNoEnd} \
      ~{true="--no-start" false="" noNoStart} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""}
  >>>
}