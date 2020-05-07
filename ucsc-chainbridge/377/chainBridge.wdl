version 1.0

task ChainBridge {
  input {
    String maxMaxGap
    File scoreScoreScheme
    Boolean linearLinearGap
    String? inInChain
    String? targetTarget2bit
    String? queryQuery2bit
    String? outOutChain
  }
  command <<<
    chainBridge \
      ~{inInChain} \
      ~{if defined(maxMaxGap) then ("-maxGap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(scoreScoreScheme) then ("-scoreScheme " +  '"' + scoreScoreScheme + '"') else ""} \
      ~{true="-linearGap" false="" linearLinearGap} \
      ~{targetTarget2bit} \
      ~{queryQuery2bit} \
      ~{outOutChain}
  >>>
}