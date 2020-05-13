version 1.0

task Lsg {
  input {
    Boolean basenameBasename
    Boolean gsaGsa
    Boolean tauTau
    Boolean cycCycNum
    String readReadLength
  }
  command <<<
    lsg \
      ~{true="--basename" false="" basenameBasename} \
      ~{true="--GSA" false="" gsaGsa} \
      ~{true="--TAU" false="" tauTau} \
      ~{true="--CycNum" false="" cycCycNum} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""}
  >>>
}