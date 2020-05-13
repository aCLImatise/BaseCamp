version 1.0

task AxtChain {
  input {
    String linearLinearGap
    String? inInAXt
    String? tTNibDir
    String? qQNibDir
    String? outOutChain
  }
  command <<<
    axtChain \
      ~{inInAXt} \
      ~{if defined(linearLinearGap) then ("-linearGap " +  '"' + linearLinearGap + '"') else ""} \
      ~{tTNibDir} \
      ~{qQNibDir} \
      ~{outOutChain}
  >>>
}