version 1.0

task Fq {
  input {
    Boolean quietQuiet
    String refRef
    Boolean histHist
  }
  command <<<
    fq \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--hist" false="" histHist}
  >>>
}