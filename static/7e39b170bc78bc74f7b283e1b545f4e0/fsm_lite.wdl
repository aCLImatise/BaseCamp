version 1.0

task FsmLite {
  input {
    File listList
    File tmpTmp
    Int minMin
    Int maxMax
    Int freqFreq
    Int minMinSupp
    Int maxMaxSupp
    Boolean verboseVerbose
  }
  command <<<
    fsm-lite \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(freqFreq) then ("--freq " +  '"' + freqFreq + '"') else ""} \
      ~{if defined(minMinSupp) then ("--minsupp " +  '"' + minMinSupp + '"') else ""} \
      ~{if defined(maxMaxSupp) then ("--maxsupp " +  '"' + maxMaxSupp + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}