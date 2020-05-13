version 1.0

task ChainToAxt {
  input {
    Int maxMaxGap
    Int maxMaxChain
    Int minMinScore
    Int miniMiniD
    Boolean bedBed
    String? inInChain
    String? tnibdiror2bitTnibdiror2bit
    String? qnibdiror2bitQnibdiror2bit
    String? outOutAXt
  }
  command <<<
    chainToAxt \
      ~{inInChain} \
      ~{if defined(maxMaxGap) then ("-maxGap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(maxMaxChain) then ("-maxChain " +  '"' + maxMaxChain + '"') else ""} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(miniMiniD) then ("-minId " +  '"' + miniMiniD + '"') else ""} \
      ~{true="-bed" false="" bedBed} \
      ~{tnibdiror2bitTnibdiror2bit} \
      ~{qnibdiror2bitQnibdiror2bit} \
      ~{outOutAXt}
  >>>
}