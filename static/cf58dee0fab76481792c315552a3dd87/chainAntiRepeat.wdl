version 1.0

task ChainAntiRepeat {
  input {
    String minMinScore
    String noNoCheckScore
    String? tTNibDir
    String? qQNibDir
    String? inInChain
    String? outOutChain
  }
  command <<<
    chainAntiRepeat \
      ~{tTNibDir} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(noNoCheckScore) then ("-noCheckScore " +  '"' + noNoCheckScore + '"') else ""} \
      ~{qQNibDir} \
      ~{inInChain} \
      ~{outOutChain}
  >>>
}