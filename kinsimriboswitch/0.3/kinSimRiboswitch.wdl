version 1.0

task KinSimRiboswitch {
  input {
    String eE
    String mM
    String tT
    Boolean lL
    Boolean rR
    String aA
    Boolean cC
    Boolean mM
    String sS
    String lL
    String bB
    Boolean fF
    Boolean dD
    String tT
    Boolean fF
    String? argsArgs
    String? sequenceSequenceFastA
  }
  command <<<
    kinSimRiboswitch \
      ~{argsArgs} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-M" false="" mM} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-D" false="" dD} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{sequenceSequenceFastA}
  >>>
}