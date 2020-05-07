version 1.0

task _cmfinder.pl {
  input {
    Boolean bB
    String cC
    String mM
    String mM
    String fF
    String s1S1
    String s2S2
    Boolean combineCombine
    Boolean hmmHmm
    Boolean anchorAnchor
  }
  command <<<
    _cmfinder.pl \
      ~{true="-b" false="" bB} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(s1S1) then ("-s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("-s2 " +  '"' + s2S2 + '"') else ""} \
      ~{true="-combine" false="" combineCombine} \
      ~{true="-hmm" false="" hmmHmm} \
      ~{true="-anchor" false="" anchorAnchor}
  >>>
}