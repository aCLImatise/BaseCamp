version 1.0

task BiomHead {
  input {
    File inputInputFp
    File outputOutputFp
    Int nNObs
    Int nNSamp
  }
  command <<<
    biom head \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(nNObs) then ("--n-obs " +  '"' + nNObs + '"') else ""} \
      ~{if defined(nNSamp) then ("--n-samp " +  '"' + nNSamp + '"') else ""}
  >>>
}