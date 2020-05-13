version 1.0

task NetToAxt {
  input {
    String qQChain
    String maximumMaximum
    String outputOutput
    Boolean noNoSplit
    String? inInNet
    String? inInChain
    String? targetTarget2bit
    String? queryQuery2bit
    String? outOutAXt
  }
  command <<<
    netToAxt \
      ~{inInNet} \
      ~{if defined(qQChain) then ("-qChain " +  '"' + qQChain + '"') else ""} \
      ~{if defined(maximumMaximum) then ("- maximum " +  '"' + maximumMaximum + '"') else ""} \
      ~{if defined(outputOutput) then ("- Output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-noSplit" false="" noNoSplit} \
      ~{inInChain} \
      ~{targetTarget2bit} \
      ~{queryQuery2bit} \
      ~{outOutAXt}
  >>>
}